// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/items.dart';
// import './photo_item.dart';

// class PhotosGrid extends StatelessWidget {
//   final bool showFavs;

//   PhotosGrid(this.showFavs);

//   @override
//   Widget build(BuildContext context) {
//     final photosData = Provider.of<Items>(context);
//     final photos = showFavs ? photosData.itemsFavorite : photosData.items;
//     //final photos = photosData.items;

//     return photos.length == 0
//         ? Center(child: Text('No match found'))
//         : GridView.builder(
//             padding: const EdgeInsets.all(10.0),
//             itemCount: photos.length,
//             itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//               // builder: (c) => products[i],
//               value: photos[i],
//               child: ProductItem(isfavoriteScreen: showFavs,
//                   // products[i].id,
//                   // products[i].title,
//                   // products[i].imageUrl,
//                   ),
//             ),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 2 / 2.5,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//             ),
//           );
//   }
// }
