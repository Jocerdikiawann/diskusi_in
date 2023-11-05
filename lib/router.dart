import 'package:go_router/go_router.dart';
import 'package:diskusi_in/ui/home.dart';
import 'package:diskusi_in/ui/sign_in.dart';
import 'package:diskusi_in/ui/sign_up.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => const Home(),
      routes: [
        GoRoute(
          path: "signIn",
          name: "signIn",
          builder: (context, state) => const SignIn(),
        ),
        GoRoute(
          path: "signUp",
          name: "signUp",
          builder: (context, state) => const SignUp(),
        ),
      ],
    ),
  ],
);
