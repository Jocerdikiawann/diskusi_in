import 'package:diskusi_in/bloc/authentication_bloc.dart';
import 'package:diskusi_in/bloc/on_board_bloc.dart';
import 'package:diskusi_in/network/pb_client.dart';
import 'package:diskusi_in/repository/user_repository.dart';
import 'package:diskusi_in/router.dart';
import 'package:diskusi_in/ui/component/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthenticationBloc(
            userRepository: UserRepository(PbClient()),
          ),
        ),
        BlocProvider(
          create: (context) => OnBoardBloc(),
        )
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
          ),
          fontFamily: "Nunito",
        ),
        scaffoldMessengerKey: snackbarkey,
        debugShowCheckedModeBanner: true,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
