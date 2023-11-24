import 'package:diskusi_in/model/user/user_model.dart';
import 'package:diskusi_in/network/pb_client.dart';
import 'package:diskusi_in/network/result_network.dart';

class UserRepository {
  const UserRepository(this.client);

  final PbClient client;

  Future<ResultNetwork<UserModel>> signIn(String email, String password) async {
    return client.signIn(UserSignInModel(email: email, password: password));
  }

  Future<ResultNetwork<UserModel>> signUp(String fullName, String email,
      String password, String passwordConfirm) async {
    return client.signUp(
      UserSignUpModel(
        fileName: "",
        passwordConfirm: passwordConfirm,
        fullName: fullName,
        email: email,
        password: password,
      ),
    );
  }
}
