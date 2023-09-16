// import 'package:flutter/material.dart';
// import 'package:online_shop_app/provider/smartfon_provider.dart';
// import 'package:provider/provider.dart';

// class AddToCart extends StatefulWidget {
//   const AddToCart({super.key});

//   @override
//   State<AddToCart> createState() => _AddToCartState();
// }

// class _AddToCartState extends State<AddToCart> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: Provider.of<SmartfonTypes>(context, listen: false).getSmartfons(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           if (snapshot.connectionState == ConnectionState.done) {
//             return ListView.builder(
//                 itemCount: Provider.of<SmartfonTypes>(context).smartfons.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(Provider.of<SmartfonTypes>(context).smartfons[index].title),
//                   );
//                 });
//           } else {
//             return Text('data');
//           }
//         },
//       ),
//     );
//   }
// }
