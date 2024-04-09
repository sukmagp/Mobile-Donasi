import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.secondary,
        foregroundColor: ColorManager.tertiary,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 90.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.secondary,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -70.0, 0.0),
              height: 140.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '${AssetImageIconManager.assetPath}/profile_icon.png',
                  ),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -70.0, 0.0),
              child: Column(
                children: [
                  const Text(
                    "Anonymous User",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f20),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "useranonymous@mail.com",
                    style: TextStyle(color: Color(0xFF005E6A)),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
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
                        onPressed: () => {},
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontWeight: FontWeightManager.reguler,
                              fontSize: FontSizeManager.f12),
                        )),
                  )
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Iconsax.setting,
                    color: Color(0xFF005E6A),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "Pengaturan",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Iconsax.arrow_right_3,
                          color: ColorManager.black,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Iconsax.message_question,
                    color: Color(0xFF005E6A),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "Bantuan",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                        // padding: const EdgeInsets.only(right: AppPadding.p40),
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Iconsax.arrow_right_3,
                          color: ColorManager.black,
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Iconsax.info_circle,
                    color: Color(0xFF005E6A),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "Tentang Kami",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                        // padding: const EdgeInsets.only(right: AppPadding.p40),
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Iconsax.arrow_right_3,
                          color: ColorManager.black,
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Iconsax.logout,
                    color: const Color(0xFFFF0000),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      {
                        Navigator.pushNamed(context, '/login-screen');
                      }
                    },
                    child: Text(
                      "Keluar",
                      style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16,
                        color: Colors
                            .red, // Optional: change the text color if needed
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
