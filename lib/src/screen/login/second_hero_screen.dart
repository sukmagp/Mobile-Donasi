import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class SecondHeroScreen extends StatefulWidget {
  const SecondHeroScreen({super.key});

  @override
  State<SecondHeroScreen> createState() => _SecondHeroScreenState();
}

class _SecondHeroScreenState extends State<SecondHeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                  transform: Matrix4.translationValues(0.0, -200.0, 0.0),
                  height: 40.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '${AssetImageIconManager.assetPath}/tagline_hero_image.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 166.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
                  child: InkWell(
                    onTap: () {
                      {
                        Navigator.pushNamed(context, '/login-screen');
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
                        "Mulai",
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
        ],
      ),
    );
  }
}
