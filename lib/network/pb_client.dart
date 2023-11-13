import 'package:diskusi_in/model/user/user_model.dart';
import 'package:diskusi_in/network/result_network.dart';
import 'package:diskusi_in/utils/client_exceptions.dart';
import 'package:diskusi_in/utils/error_type.dart';
import 'package:pocketbase/pocketbase.dart';

class PbClient {
  PbClient({
    PocketBase? pb,
    this.baseUrl = "http://192.168.0.110:8090",
  }) : pb = pb ?? PocketBase(baseUrl);

  final String baseUrl;
  final PocketBase pb;

  Future<ResultNetwork<UserModel>> signUp(UserSignUpModel body) async {
    try {
      final userData = await pb.collection("users").create(body: body.toJson());
      return ResultNetwork.success(UserModel.fromRecord(userData));
    } on ClientException catch (error) {
      return ResultNetwork.failed(
        ErrorType.internal,
        "ERROR: ${error.errorMessage}",
      );
    }
  }

  Future<ResultNetwork<UserModel>> signIn(UserSignInModel body) async {
    try {
      final userData = await pb
          .collection("users")
          .authWithPassword(body.email, body.password);

      if (userData.record == null) {
        return const ResultNetwork.failed(ErrorType.notFound, "User not found");
      }

      return ResultNetwork.success(UserModel.fromRecord(userData.record!));
    } on ClientException catch (error) {
      return ResultNetwork.failed(
        ErrorType.internal,
        "ERROR: ${error.errorMessage}",
      );
    }
  }
}
