// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:giraffe/providers/item.dart';
// import 'package:provider/provider.dart';

// import '../screens/item_detail_screen.dart';
// import '../providers/item.dart';

// // ignore: must_be_immutable
// class ProductItem extends StatefulWidget {
//   bool isfavoriteScreen;
//   ProductItem({@required this.isfavoriteScreen});

//   @override
//   _ProductItemState createState() => _ProductItemState();
// }

// class _ProductItemState extends State<ProductItem> {
//   @override
//   Widget build(BuildContext context) {
//     final item = Provider.of<Item>(context, listen: false);
//     //final cart = Provider.of<Cart>(context, listen: false);
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(
//           (MaterialPageRoute(
//             builder: (BuildContext context) => ItemDetailScreen(
//               id: item.id,
//               smallImageUrl: item.smallImageUrl,
//               fullImageUrl: item.fullImageUrl,
//               description: item.description,
//               title: item.title,
//               author: item.author,
//               createdAt: item.createdAt,
//               isfavoriteScreen: widget.isfavoriteScreen,
//             ),
//           )),
//         );
//       },
//       child: Hero(
//         tag: item.id,
//         child: Card(
//           elevation: 5,
//           semanticContainer: true,
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20.0),
//           ),
//           shadowColor: Colors.grey[400],
//           child: Stack(children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Image.network(
//                 item.smallImageUrl,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 height: 30,
//                 alignment: Alignment.center,
//                 color: Colors.black54,
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                     left: 10.0,
//                     right: 8.0,
//                     top: 5.0,
//                     bottom: 5.0,
//                   ),
//                   child: Text(
//                     item.description == null
//                         ? 'No description available'
//                         : item.description,
//                     style: TextStyle(color: Colors.white, fontSize: 15),
//                   ),
//                 ),
//               ),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }
