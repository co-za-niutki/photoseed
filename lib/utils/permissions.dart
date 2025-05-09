import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermissions() async {
  final statuses = await [Permission.photos, Permission.videos].request();

  final allGranted = statuses.values.every(
    (status) => status == PermissionStatus.granted,
  );

  return allGranted;
}
