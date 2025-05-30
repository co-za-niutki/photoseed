import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:photoseed/widgets/app_bar.dart';

class Albums extends StatelessWidget {
  const Albums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'albums'.tr().toUpperCase()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(child: Text('albums'.tr())),
    );
  }
}
