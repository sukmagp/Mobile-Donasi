import 'package:dana_abadi_app/src/screen/dashboard_screen.dart';
import 'package:dana_abadi_app/src/screen/login/first_hero_screen.dart';
import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const FirstHeroScreen()));
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF010708),
            Color(0xFF005E6A),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Container(
              transform: Matrix4.translationValues(0.0, -140.0, 0.0),
              width: double.infinity,
              height: 580.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(1000, 1000)),
                gradient: LinearGradient(colors: [
                  Color(0xFF010708),
                  Color.fromARGB(255, 0, 69, 78),
                  // Color(0xFF005E6A),
                  // Color(0xFF14474D),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -300.0, 0.0),
              height: 220.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '${AssetImageIconManager.assetPath}/logo_image.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
