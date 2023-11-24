import 'package:diskusi_in/bloc/authentication_bloc.dart';
import 'package:diskusi_in/model/user/user_model.dart';
import 'package:diskusi_in/ui/component/button.dart';
import 'package:diskusi_in/ui/component/snackbar.dart';
import 'package:diskusi_in/ui/component/text_field.dart';
import 'package:diskusi_in/utils/field_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String _fullName, _email, _password = "", _passwordConfirm = "";
  late bool loading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () => loading = true,
          failed: (String message) => context.errorSnackbar(message),
          success: (UserModel _) => {
            context.successSnackbar("Sign up success"),
            context.goNamed("signIn")
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign up",
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
        body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Text(
                "Create a New account",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "Create a new account to be able to access the features in the application",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.5),
                    ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              CTextField(
                onChanged: (String value) => _fullName = value,
                hint: "Jhon doe",
                validator: (p0) => p0!.isEmpty ? "Required field" : null,
                label: "Full name",
              ),
              CTextField(
                onChanged: (String value) => _email = value,
                hint: "yourmail@email.com",
                validator: (p0) => p0?.validateEmail,
                label: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              CTextField(
                onChanged: (String value) => _password = value,
                obscureText: true,
                hint: "*******",
                validator: (p0) => p0?.validatePassword,
                label: "Password",
              ),
              CTextField(
                onChanged: (String value) => _passwordConfirm = value,
                obscureText: true,
                hint: "*******",
                validator: (p0) => p0?.validateMatchPassword(_password),
                label: "Confirm password",
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              loading
                  ? const CircularProgressIndicator()
                  : CButton(
                      onPressed: () async => !_formKey.currentState!.validate()
                          ? context.errorSnackbar("ERROR: validation field")
                          : context.read<AuthenticationBloc>().add(
                                AuthenticationEvent.signUp(
                                  _fullName,
                                  _email,
                                  _password,
                                  _passwordConfirm,
                                ),
                              ),
                      text: "Sign Up",
                      disabled: loading,
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(child: Text("Have an account?")),
                  Flexible(
                    child: TextButton(
                      onPressed: () => context.goNamed("signIn"),
                      child: const Text("Sign in here"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
