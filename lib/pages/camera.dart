import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:photoseed/widgets/app_bar.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'camera'.tr().toUpperCase()),
      body: Center(child: Text('camera'.tr())),
    );
  }
}
