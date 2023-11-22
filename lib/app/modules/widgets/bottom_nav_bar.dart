// import 'package:berita_bola_app/screens/discover_screen.dart';
// import 'package:berita_bola_app/screens/home_screen.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../controller/bottom_nav_controller.dart';
import '../home/views/home_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left: 50),
            child: IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, HomeScreen.routeName);
                // navigator!.push(
                //   MaterialPageRoute(
                //     builder: (_) => const HomeView(),
                //   ),
                // );
                Get.to(() => HomeView());
              },
              icon: const Icon(Icons.home),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, DiscoverScreen.routeName);
              // navigator!.push(
              //   MaterialPageRoute(
              //     builder: (_) => const DiscoverView(),
              //   ),
              // );
              // Get.to(() => const DiscoverView());
            },
            icon: const Icon(Icons.search),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {
                // print('no profile');
                // navigator!.push(
                //   MaterialPageRoute(
                //     builder: (_) => ProfileView(),
                //   ),
                // );
                // Get.to(() => ProfileView());
              },
              icon: const Icon(Icons.person),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}



// class BottomNavBar extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
// class BottomNavBar extends StatelessWidget {
//   final BottomNavController bottomNavController =
//       Get.put(BottomNavController());
//   final int currentIndex;
//   final Function(int) onTap;

//   BottomNavBar({required this.currentIndex, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: bottomNavController.selectedIndex.value,
//       onTap: onTap,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       selectedItemColor: const Color.fromARGB(255, 20, 10, 10),
//       unselectedItemColor: Colors.black.withAlpha(100),
//       items: [
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: const EdgeInsets.only(left: 50),
//             child: IconButton(
//               onPressed: () {
//                 bottomNavController.changeTabIndex(0);
//               },
//               icon: const Icon(Icons.home),
//             ),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {
//               bottomNavController.changeTabIndex(1);
//             },
//             icon: const Icon(Icons.search),
//           ),
//           label: 'Search',
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: const EdgeInsets.only(right: 50),
//             child: IconButton(
//               onPressed: () {
//                 bottomNavController.changeTabIndex(2);
//               },
//               icon: const Icon(Icons.person),
//             ),
//           ),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }
