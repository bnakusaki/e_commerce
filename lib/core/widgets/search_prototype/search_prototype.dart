import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';
import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
import 'package:flutter/material.dart';

class SearchState extends ChangeNotifier {
  /// Search field controller
  final TextEditingController _searchController = TextEditingController();
  get searchController => _searchController;

  /// Notifies if query results must be displayed or not.
  final hasValue = ValueNotifier<bool>(false);

  /// query result
  List _matches = [];
  List get matches => _matches;
  set matches(List x) {
    _matches = x;
    notifyListeners();
  }
}

class BuildQueryItem extends StatelessWidget {
  const BuildQueryItem({
    super.key,
    required this.index,
    required this.onTap,
    required this.searchable,
  });
  final int index;
  final Function() onTap;
  final List<Map<String, dynamic>> searchable;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> queryItem = searchable[index];
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          color: Colors.transparent,
          height: shortestSide(context) * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                queryItem['name'],
                style: bodyText0,
              ),
              SizedBox(
                height: shortestSide(context) * 0.06,
                child: queryItem['logo'] != null ? Image(image: AssetImage(queryItem['logo'])) : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultBuilder extends StatefulWidget {
  const ResultBuilder({
    super.key,
    required this.hasValue,
    required this.searchState,
    required this.sellState,
    required this.searchable,
    required this.tapCallback,
  });
  final bool hasValue;
  final SearchState searchState;
  final SellState sellState;
  final List<Map<String, dynamic>> searchable;
  final Function(Map) tapCallback;

  @override
  State<ResultBuilder> createState() => _ResultBuilderState();
}

class _ResultBuilderState extends State<ResultBuilder> {
  @override
  Widget build(BuildContext context) {
    return !widget.hasValue
        ? const SizedBox()
        : widget.searchState.matches.isEmpty
            ? const SizedBox()
            : AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(borderRaduis), boxShadow: shadow),
                height: shortestSide(context) * 0.15 * widget.searchState.matches.length,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    for (int index in widget.searchState.matches)
                      ListenableBuilder(
                          listenable: widget.searchState,
                          builder: (BuildContext context, Widget? child) {
                            return BuildQueryItem(
                              index: index,
                              searchable: widget.searchable,
                              onTap: () {
                                debugPrint('================== tapped ==============');
                                final Map<String, dynamic> queryItem = widget.searchable[index];
                                widget.searchState.searchController.text = queryItem['name'];
                                widget.searchState.hasValue.value = false;
                                widget.tapCallback(queryItem);
                              },
                            );
                          })
                  ],
                ),
              );
  }
}
