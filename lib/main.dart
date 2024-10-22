// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Column(
//           children: [

//             Container(
//               height: 250,
//               color: Colors.deepOrange,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.Center,
//                 children: [
//                   Icon(Icons.star, size: 100,),
//                   Icon(Icons.favorite, size: 100,),
//                   Icon(Icons.share, size: 100,),
//                 ],
//               ),
//             ),

//             Container(
//               color: Colors.blue,
//               child: ListView.builder(
//                 itemCount: names.length,
//                 itemBuilder: (context,  index) => listTitle{
//                   title: Text(names,(index)),
//                 },),
//               ),
//             )
//           ]
//         ),
//      )
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // List of names
//     List<String> names = [
//       'Andi',
//       'Budi',
//       'Caca',
//       'Dedi',
//       'Eka',
//       'Fani',
//       'Gilang',
//       'Hadi',
//       'Ira',
//       'Joko',
//       'Kiki',
//       'Lina',
//       'Mira'
//     ];

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.deepPurple,
//         body: Column(
//           children: [
//             // Top section with icons
//             Container(
//               height: 250,
//               color: Colors.deepOrange,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: const [
//                   Icon(Icons.star, size: 100, color: Colors.white),
//                   Icon(Icons.favorite, size: 100, color: Colors.white),
//                   Icon(Icons.share, size: 100, color: Colors.white),
//                 ],
//               ),
//             ),

//                   // List of names
//                   Expanded(
//                     child: Container(
//                       color: Colors.blue,
//                       child: ListView.builder(
//                         itemCount: names.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text(
//                               names[index],
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mwebprktk1/pages/halaman1.dart';
import 'package:mwebprktk1/pages/halaman2.dart';
import 'package:mwebprktk1/pages/halaman3.dart';
import 'package:mwebprktk1/pages/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const Navbar(),
          '/halaman1': (context) => const Pertama(),
          '/halaman2': (context) => const Kedua(),
          '/halaman3': (context) => const Ketiga(),
        });
  }
}
