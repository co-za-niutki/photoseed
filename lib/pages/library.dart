import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('library'.tr())));
  }
}
