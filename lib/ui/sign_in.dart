import 'package:diskusi_in/bloc/authentication_bloc.dart';
import 'package:diskusi_in/ui/component/button.dart';
import 'package:diskusi_in/ui/component/snackbar.dart';
import 'package:diskusi_in/ui/component/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String _email = "", _password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Sign in",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                SvgPicture.asset(
                  "assets/images/ic_placeholder_2.svg",
                  semanticsLabel: "placeholder_2",
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                  textAlign: TextAlign.center,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                CTextField(
                  onChanged: (value) => _email = value,
                  hint: "yourmail@mail.com",
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (p0) =>
                      p0!.isEmpty ? "Email cannot be empty" : null,
                ),
                CTextField(
                  onChanged: (value) => _password = value,
                  obscureText: true,
                  hint: "********",
                  label: "Password",
                  validator: (p0) =>
                      p0!.isEmpty ? "Password cannot be empty" : null,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                CButton(
                  isFilled: true,
                  onPressed: () => !_formKey.currentState!.validate()
                      ? context.errorSnackbar("ERROR: All field must be filled")
                      : context.read<AuthenticationBloc>().add(
                            AuthenticationEvent.signIn(_email, _password),
                          ),
                  text: "Sign In",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () => context.goNamed("signUp"),
                      child: const Text("Sign up here"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
