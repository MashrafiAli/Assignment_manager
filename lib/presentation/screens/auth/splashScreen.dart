import 'package:assingment_project/presentation/utlis/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'sign_in_screen.dart';

import '../widgets/appBackgroundWidget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  initState() {
    super.initState();
    waitSplashToSingIn();
  }

  void waitSplashToSingIn() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const SingInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackgroundWidget(
      child: Center(child: SvgPicture.asset(AssetManager.appHeaderImage)),
    ));
  }
}
