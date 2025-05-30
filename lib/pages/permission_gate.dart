import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:photoseed/homepage.dart';
import 'package:photoseed/utils/permissions.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionGate extends StatefulWidget {
  const PermissionGate({super.key});

  @override
  State<PermissionGate> createState() => _PermissionGateState();
}

class _PermissionGateState extends State<PermissionGate> {
  bool _isRequesting = false;
  bool _isPermanentlyDenied = false;

  @override
  void initState() {
    super.initState();
    _checkInitialPermissionStatus();
  }

  Future<void> _checkInitialPermissionStatus() async {
    final photosStatus = await Permission.photos.status;
    final videosStatus = await Permission.videos.status;

    if (!mounted) return;

    setState(() {
      _isPermanentlyDenied =
          photosStatus == PermissionStatus.permanentlyDenied ||
          videosStatus == PermissionStatus.permanentlyDenied;
    });
  }

  Future<void> _handlePermissionRequest() async {
    setState(() => _isRequesting = true);

    final result = await requestPermissions();
    if (!mounted) return;

    setState(() {
      _isRequesting = false;
      _isPermanentlyDenied = result.isPermanentlyDenied;
    });

    if (result.allGranted) {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => Homepage()));
    } else if (result.isPermanentlyDenied) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('permission_gate.permanently_denied_message'.tr()),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('permission_gate.denied_message'.tr())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'permissions'.tr().toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'permission_gate.explanation'.tr(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed:
                    _isRequesting
                        ? null
                        : () {
                          if (_isPermanentlyDenied) {
                            openAppSettings();
                          } else {
                            _handlePermissionRequest();
                          }
                        },
                child:
                    _isRequesting
                        ? SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                        : Text(
                          _isPermanentlyDenied
                              ? 'permission_gate.open_settings'.tr()
                              : 'permission_gate.retry'.tr(),
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
