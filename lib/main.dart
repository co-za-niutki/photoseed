// Photoseed - gallery app
// Copyright (C) 2025  co-za-niutki
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published
// by the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:photoseed/theme/theme.dart';
import 'package:photoseed/utils/permissions.dart';

import 'package:photoseed/homepage.dart';
import 'package:photoseed/pages/permission_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final permissionsGranted = await requestPermissions();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('pl')],
      path: 'assets/translations',
      useFallbackTranslations: true,
      fallbackLocale: Locale('en'),
      child: MyApp(
        startPage:
            permissionsGranted ? const Homepage() : const PermissionGate(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget startPage;
  const MyApp({super.key, required this.startPage});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return MaterialApp(
          title: 'Photoseed',
          theme: AppTheme.lightTheme(lightDynamic),
          darkTheme: AppTheme.darkTheme(darkDynamic),
          home: startPage,
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
        );
      },
    );
  }
}
