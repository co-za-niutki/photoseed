import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:photoseed/pages/camera.dart';
import 'package:photoseed/pages/albums.dart';
import 'package:photoseed/pages/library.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [Camera(), Albums(), Library()];

    return PopScope(
      canPop: pageIndex == 0,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop && pageIndex != 0) {
          setState(() {
            pageIndex = 0;
          });
        }
      },
      child: Scaffold(
        body: screens[pageIndex],
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.camera_alt_outlined),
              selectedIcon: Icon(Icons.camera_alt),
              label: "camera".tr(),
            ),
            NavigationDestination(
              icon: Icon(Icons.photo_album_outlined),
              selectedIcon: Icon(Icons.photo_album),
              label: "albums".tr(),
            ),
            NavigationDestination(
              icon: Icon(Icons.auto_awesome_mosaic_outlined),
              selectedIcon: Icon(Icons.auto_awesome_mosaic),
              label: "library".tr(),
            ),
          ],
          onDestinationSelected: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedIndex: pageIndex,
        ),
      ),
    );
  }
}
