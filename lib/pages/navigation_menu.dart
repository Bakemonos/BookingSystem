// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class NavigationMenu extends StatefulWidget {
//   const NavigationMenu({super.key});

//   @override
//   State<NavigationMenu> createState() => _NavigationMenuState();
// }

// class _NavigationMenuState extends State<NavigationMenu> {
//   int _selectedIndex = 0;
//   final PageController _pageController = PageController();

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     _pageController.jumpToPage(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         height: 80,
//         elevation: 0,
//         selectedIndex: _selectedIndex,
//         onDestinationSelected: _onItemTapped,
//         destinations: <NavigationDestination>[
//           NavigationDestination(
//             icon: SvgPicture.asset('assets/Icons/home.svg'),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset('assets/Icons/activities.svg'),
//             label: 'Activities',
//           ),
//           NavigationDestination(
//             icon: SvgPicture.asset('assets/Icons/records.svg'),
//             label: 'Records',
//           ),
//         ],
//       ),
//       body: PageView(
//         controller: _pageController,
//         onPageChanged: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         children: const <Widget>[
//           HomeScreen(), // Replace with your actual pages
//           ActivitiesScreen(), // Replace with your actual pages
//           RecordsScreen(), // Replace with your actual pages
//         ],
//       ),
//     );
//   }
// }

// // Placeholder widgets for the pages
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               child: const Text('HOME'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ActivitiesScreen extends StatefulWidget {
//   const ActivitiesScreen({super.key});

//   @override
//   State<ActivitiesScreen> createState() => _ActivitiesScreenState();
// }

// class _ActivitiesScreenState extends State<ActivitiesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               child: const Text('ACTIVITIES'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RecordsScreen extends StatefulWidget {
//   const RecordsScreen({super.key});

//   @override
//   State<RecordsScreen> createState() => _RecordsScreenState();
// }

// class _RecordsScreenState extends State<RecordsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               child: const Text('RECORDS'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
