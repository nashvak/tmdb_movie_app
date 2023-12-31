// import 'package:flutter/material.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 60,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(
//                   Icons.arrow_back_ios_new_sharp,
//                   size: 25,
//                 ),
//               ),
//               SizedBox(
//                 // width: 310,
//                 height: 40,
//                 width: 350,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     fillColor: Colors.black,
//                     filled: true,
//                     labelText: 'Search Your Movies Here!',
//                     labelStyle: const TextStyle(color: Colors.grey),
//                     suffixIcon: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.close,
//                         color: Colors.white,
//                       ),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // class SearchbarRow extends StatelessWidget {
// //   const SearchbarRow({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       children: [
// //         const SizedBox(
// //           width: 10,
// //         ),
// //         CircleAvatar(
// //           radius: 25,
// //           child: Image.asset('assets/user-logo.png'),
// //         ),
// //       ],
// //     );
// //   }
// // }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_app/screens/search/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CupertinoSearchTextField(
                placeholder: 'Search movies,series..',
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Expanded(child: ScreenAfterSearch()),
            Expanded(child: SearchResultWidger())
          ],
        ),
      )),
    );
  }
}
