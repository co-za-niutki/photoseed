import 'package:permission_handler/permission_handler.dart';

class PermissionRequestResult {
  final bool allGranted;
  final bool isPermanentlyDenied;

  PermissionRequestResult(this.allGranted, this.isPermanentlyDenied);
}

Future<PermissionRequestResult> requestPermissions() async {
  final statuses = await [Permission.photos, Permission.videos].request();

  final allGranted = statuses.values.every(
    (status) => status == PermissionStatus.granted,
  );

  final isPermanentlyDenied = statuses.values.any(
    (status) => status == PermissionStatus.permanentlyDenied,
  );

  return PermissionRequestResult(allGranted, isPermanentlyDenied);
}
