
import 'package:assingment_project/presentation/utlis/asset_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/sign_in_screen.dart';

class SplashScreenWidget extends StatelessWidget {
  final Widget child;

  const SplashScreenWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(
        AssetManager.appBackgroundImages,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      SafeArea(child: child),

    ]);
  }
}
