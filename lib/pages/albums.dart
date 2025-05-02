import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('albums'.tr())));
  }
}
