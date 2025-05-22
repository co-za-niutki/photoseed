import 'package:flutter/material.dart';
import 'package:photoseed/widgets/settings_dialog.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({super.key, this.title = 'PhotoSeed'});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SettingsDialog();
              },
            );
          },
        ),
      ],
    );
  }
}
