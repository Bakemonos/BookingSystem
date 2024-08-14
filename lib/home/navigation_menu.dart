import 'package:app/components/text.dart';
import 'package:app/home/screen/activities.dart';
import 'package:app/home/screen/home.dart';
import 'package:app/home/screen/profile.dart';
import 'package:app/home/screen/search.dart';
import 'package:app/home/selectCategory.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Search(),
    const Activities(),
    const Profile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Container(
        constraints: BoxConstraints(
          minWidth: 60.w,
          minHeight: 60.h,
        ),
        child: FloatingActionButton(
          disabledElevation: 0,
          backgroundColor: const Color(primaryColor),
          enableFeedback: true,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Selectcategory(),
              ),
            );
          },
          shape: const CircleBorder(),
          child: Icon(
            Icons.add,
            size: 30.w,
            color: const Color(textLight),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          height: 80.h,
          color: const Color(foregroundColor),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 60.w,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Home();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 0
                              ? navIcon('home.svg', const Color(primaryColor))
                              : navIcon('home.svg', const Color(textSubtitle)),
                          MyText(
                            color: currentTab == 0
                                ? const Color(primaryColor)
                                : const Color(textSubtitle),
                            label: 'Home',
                            size: 10.sp,
                            fontweight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 60.w,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Search();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 1
                              ? navIcon('search.svg', const Color(primaryColor))
                              : navIcon(
                                  'search.svg', const Color(textSubtitle)),
                          MyText(
                            color: currentTab == 1
                                ? const Color(primaryColor)
                                : const Color(textSubtitle),
                            label: 'Search',
                            size: 10.sp,
                            fontweight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 60.w,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Activities();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentTab == 2
                              ? navIcon(
                                  'activities.svg', const Color(primaryColor))
                              : navIcon(
                                  'activities.svg', const Color(textSubtitle)),
                          MyText(
                            color: currentTab == 2
                                ? const Color(primaryColor)
                                : const Color(textSubtitle),
                            label: 'Activites',
                            size: 10.sp,
                            fontweight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 60.w,
                      onPressed: () {
                        setState(() {
                          currentScreen = const Profile();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/Icons/profileAvatar.svg'),
                          MyText(
                            color: currentTab == 3
                                ? const Color(primaryColor)
                                : const Color(textSubtitle),
                            label: 'Profile',
                            size: 10.sp,
                            fontweight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget navIcon(String icon, Color color) {
  return SvgPicture.asset(
    'assets/Icons/$icon',
    color: color,
  );
}
