import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:photoseed/widgets/app_bar.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'library'.tr().toUpperCase()),
      body: Center(child: Text('library'.tr())),
    );
  }
}
