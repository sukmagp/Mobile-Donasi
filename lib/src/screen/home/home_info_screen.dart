import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class HomeInfoScreen extends StatefulWidget {
  const HomeInfoScreen({super.key});

  @override
  State<HomeInfoScreen> createState() => _HomeInfoScreenState();
}

class _HomeInfoScreenState extends State<HomeInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.tertiary,
        borderRadius: BorderRadius.circular(AppSize.s16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 10.0, right: 140.0),
            height: 48.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '${AssetImageIconManager.assetPath}/user_donate_image.png',
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 14.0),
                child: Text(
                  "Lebih dari 10.000 donatur per hari",
                  style: TextStyle(fontSize: FontSizeManager.f12),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(ColorManager.secondary),
                          foregroundColor:
                              MaterialStateProperty.all(ColorManager.tertiary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/report-screen')},
                        child: const Text("Lihat")),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
