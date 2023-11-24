import 'package:diskusi_in/utils/error_type.dart';
import 'package:permission_handler/permission_handler.dart';

class StatusPermission {
  ErrorType type;
  String message;
  StatusPermission(this.type, this.message);
}

class PermissionHandler {
  static const List<Permission> permissions = [
    Permission.camera,
    Permission.storage
  ];

  Future<StatusPermission> checkAll() async {
    List<Permission> giveIt = [];
    List<Permission> notGiveIt = [];
    for (var permission in permissions) {
      if (await permission.isGranted) {
        giveIt.add(permission);
      } else {
        notGiveIt.add(permission);
      }
    }
    if (notGiveIt.isNotEmpty) {
      return StatusPermission(ErrorType.permissionDenied, "Denied: $notGiveIt");
    }
    return StatusPermission(ErrorType.ok, "All permission granted");
  }

  Future<bool> checkOne(permission) async {
    return await permission.isGranted;
  }

  Future<StatusPermission> give() async {
    Map<Permission, PermissionStatus> request = await permissions.request();

    List<Permission> giveIt = [];
    List<Permission> notGiveIt = [];

    request.forEach((key, value) {
      if (value.isGranted) {
        giveIt.add(key);
      } else {
        notGiveIt.add(key);
      }
    });

    if (notGiveIt.isNotEmpty) {
      return StatusPermission(ErrorType.permissionDenied, "Denied: $notGiveIt");
    }
    return StatusPermission(ErrorType.ok, "All permission granted");
  }
}
