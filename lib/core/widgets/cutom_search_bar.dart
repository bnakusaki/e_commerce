// import 'package:ecommerce/core/functions/custom_search_algorithm.dart';
// import 'package:ecommerce/core/style/colors.dart';
// import 'package:ecommerce/core/widgets/white_spaces.dart';
// import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
// import 'package:flutter/material.dart';

// import 'package:ecommerce/core/sizes.dart';
// import 'package:ecommerce/core/style/text_styles.dart';
// import 'package:ecommerce/features/sell/presentation/widgets/custom_textfield.dart';
// import 'package:ecommerce/features/shirt/domain/entities/brands.dart';

// SellState sellState = SellState();
// SearchState searchState = SearchState();

// // TODO: fix Localizations.
// class CustomSearchBar extends StatefulWidget {
//   CustomSearchBar({
//     super.key,
//     required this.onSubmitted,
//     required this.searchBarLable,
//     required this.dictionaary,
//   });
//   final String searchBarLable;
//   Function(String) onSubmitted;
//   final List dictionaary;

//   @override
//   State<CustomSearchBar> createState() => _CustomSearchBarState();
// }

// class _CustomSearchBarState extends State<CustomSearchBar> {
//   final TextEditingController _brandSearchController = TextEditingController();
//   List matches = [];
//   final hasValue = ValueNotifier<bool>(false);
//   @override
//   Widget build(BuildContext context) {
//     _brandSearchController.text = searchState.result ?? '';
//     return Scaffold(
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           /// TextField
//           CustomTextField(
//             label: widget.searchBarLable,
//             controller: _brandSearchController,
//             onChanged: (_) {
//               setState(() {
//                 matches = customSearchAlgorithm(_brandSearchController.text, widget.dictionaary);
//                 widget.onSubmitted('');
//                 hasValue.value = true;
//               });
//             },
//           ),

//           whiteSpace(height: 5),
//           ValueListenableBuilder(
//             valueListenable: hasValue,
//             builder: (context, hasValue, child) {
//               return !hasValue
//                   ? const SizedBox()
//                   : matches.isEmpty
//                       ? const SizedBox()
//                       : SearchResultsBuilder(matches: matches);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

// ////////////////////////////////////////////////////////////////////////////////
// /// Builds series of tiles to show the search result to user.
// ////////////////////////////////////////////////////////////////////////////////
// class SearchResultsBuilder extends StatelessWidget {
//   const SearchResultsBuilder({super.key, required this.matches});
//   final List matches;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 100),
//       decoration: BoxDecoration(
//         color: white,
//         borderRadius: BorderRadius.circular(borderRaduis),
//         boxShadow: shadow,
//       ),
//       height: shortestSide(context) * 0.15 * matches.length,
//       child: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           for (int brandIndex in matches)
//             BuildBrandItem(
//               brandIndex: brandIndex,
//               tapCallBack: (_) {
//                 sellState.shirtBrand = _['name'];
//               },
//             ),
//         ],
//       ),
//     );
//   }
// }
// ////////////////////////////////////////////////////////////////////////////////

// class BuildBrandItem extends StatelessWidget {
//   const BuildBrandItem({
//     super.key,
//     required this.brandIndex,
//     // required this.onTap,
//     required this.tapCallBack,
//   });
//   final int brandIndex;
//   // final Function() onTap;
//   final Function(Map) tapCallBack;

//   @override
//   Widget build(BuildContext context) {
//     final Map<String, dynamic> brand = shirtBrands[brandIndex];
//     return GestureDetector(
//       onTap: () {
//         searchState.result = brand;
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 5),
//         child: SizedBox(
//           height: shortestSide(context) * 0.15,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 brand['name'],
//                 style: bodyText0,
//               ),
//               SizedBox(
//                 height: shortestSide(context) * 0.06,
//                 child: Image(
//                   image: AssetImage(
//                     brand['logo'],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchState extends ChangeNotifier {
//   Map<String, dynamic>? _result;
//   get result => _result;
//   set result(res) {
//     _result = res;
//   }
// }
