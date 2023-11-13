import 'package:diskusi_in/ui/call.dart';
import 'package:diskusi_in/ui/chat.dart';
import 'package:diskusi_in/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:diskusi_in/ui/on_board.dart';
import 'package:diskusi_in/ui/sign_in.dart';
import 'package:diskusi_in/ui/sign_up.dart';

final _rootNavigator = GlobalKey<NavigatorState>();
final _shellNavigatorChat = GlobalKey<NavigatorState>();
final _shellNavigatorCall = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: "/onBoard/signUp",
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigator,
  routes: [
    GoRoute(
      path: "/",
      name: "onBoard",
      builder: (context, state) => const OnBoard(),
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
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => HomeScaffold(
              navigationShell: navigationShell,
            ),
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorChat,
            routes: [
              GoRoute(
                path: "/chat",
                name: "chat",
                pageBuilder: (context, state) => const MaterialPage(
                  child: Chat(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCall,
            routes: [
              GoRoute(
                path: "/call",
                name: "call",
                pageBuilder: (context, state) => const MaterialPage(
                  child: Call(),
                ),
              ),
            ],
          )
        ])
  ],
);
