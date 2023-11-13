import 'package:diskusi_in/ui/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Hi, Welcome 👋",
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      //I want wrap content in bottom navigation bar
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          elevation: 0,
          height:
              MediaQuery.of(context).size.height * 0.2, // Height Warp Content
          child: Column(
            children: [
              Flexible(
                child: CButton(
                  isFilled: true,
                  onPressed: () => context.goNamed("signUp"),
                  text: "Get Started",
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
              Flexible(
                child: CButton(
                  isFilled: false,
                  onPressed: () => context.goNamed("signIn"),
                  text: "Sign In",
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 25)),
            Flexible(
              child: SvgPicture.asset(
                "assets/images/ic_hangout.svg",
                semanticsLabel: "Hangout",
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 0.8, top: 25),
              child: Column(
                children: [
                  Text(
                    "Discuss with\nyour friends here!",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Register now and start discussions with your friends!",
                    style: Theme.of(context).textTheme.bodySmall!,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
