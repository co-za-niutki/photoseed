import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('camera'.tr())));
  }
}
