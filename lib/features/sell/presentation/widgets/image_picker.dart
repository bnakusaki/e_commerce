// import 'dart:io';

// import 'package:ecommerce/core/sizes.dart';
// import 'package:ecommerce/core/style/text_styles.dart';
// import 'package:ecommerce/core/widgets/white_spaces.dart';
// import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import 'package:image_picker/image_picker.dart';

// class ImageSelector extends StatefulWidget {
//   const ImageSelector({super.key, required this.sellState});
//   final SellState sellState;

//   @override
//   State<ImageSelector> createState() => _ImageSelectorState();
// }

// ImagePickerState? image;

// class _ImageSelectorState extends State<ImageSelector> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         await pickImage();
//         setState(() {});
//       },
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(borderRaduis),
//         child: Container(
//             height: (screenWidth(context) / 2 - (horizontalScreenMargin + 5)),
//             width: (screenWidth(context) / 2 - (horizontalScreenMargin + 5)),
//             decoration: BoxDecoration(
//               color: Colors.grey[400],
//             ),
//             // ignore: unnecessary_null_comparison
//             child: image == null
//                 ? const Center(child: Icon(Icons.add))
//                 : ListenableBuilder(
//                     listenable: image!,
//                     builder: (context, child) {
//                       return Image.file(
//                         File(image!.image.path),
//                         fit: BoxFit.cover,
//                       );
//                     },
//                   )),
//       ),
//     );
//   }

//   Future pickImage() async {
//     try {
//       image = ImagePickerState(sellState: widget.sellState);
//       final ImagePicker picker = ImagePicker();
//       image!.image = (await picker.pickImage(source: ImageSource.gallery))!;
//     } on PlatformException catch (e) {
//       debugPrint('Failed to pick image: $e');
//     }
//   }
// }

// class ImagePickerState extends ChangeNotifier {
//   final SellState sellState;
//   ImagePickerState({required this.sellState});

//   XFile? _image;
//   set image(img) {
//     _image = img;
//     sellState.images = img;
//     notifyListeners();
//   }

//   get image {
//     return _image;
//   }
// }

// class ShirtImagesSelector extends StatelessWidget {
//   const ShirtImagesSelector({super.key, required this.sellState});
//   final SellState sellState;

//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           l10n.images,
//           style: heading1,
//         ),
//         whiteSpace(height: 10),
//         Row(children: [
//           ImageSelector(
//             sellState: sellState,
//           ),
//           whiteSpace(width: 10),
//           ImageSelector(
//             sellState: sellState,
//           )
//         ]),
//         whiteSpace(height: 10),
//         Row(children: [
//           ImageSelector(
//             sellState: sellState,
//           ),
//           whiteSpace(width: 10),
//           ImageSelector(
//             sellState: sellState,
//           )
//         ]),
//       ],
//     );
//   }
// }
