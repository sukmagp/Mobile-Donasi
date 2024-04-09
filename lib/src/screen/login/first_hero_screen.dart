import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class FirstHeroScreen extends StatefulWidget {
  const FirstHeroScreen({super.key});

  @override
  State<FirstHeroScreen> createState() => _FirstHeroScreenState();
}

class _FirstHeroScreenState extends State<FirstHeroScreen> {
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
              transform: Matrix4.translationValues(0.0, -64.0, 0.0),
              width: double.infinity,
              height: 540.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1000),
                  bottomRight: Radius.circular(1000),
                ),
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
              height: 160.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '${AssetImageIconManager.assetPath}/logo_image.png',
                  ),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -260.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: const Text(
                "Donasi menjadi aset abadi dan manfaatnya kekal untuk negri.\n-Dana Abadi Diponegoro-",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeightManager.reguler,
                    fontSize: FontSizeManager.f14,
                    color: Colors.white),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -14.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: InkWell(
                onTap: () {
                  {
                    Navigator.pushNamed(context, '/second-hero-screen');
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: ColorManager.tertiary,
                    borderRadius: BorderRadius.circular(AppSize.s16),
                  ),
                  child: const Text(
                    "Selanjutnya",
                    style: TextStyle(
                        color: Color(0xFF005E6A),
                        fontWeight: FontWeightManager.medium,
                        fontSize: FontSizeManager.f16),
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
