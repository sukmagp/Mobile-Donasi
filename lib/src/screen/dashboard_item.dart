import 'package:dana_abadi_app/src/screen/home/home_benner_donate_screen.dart';
import 'package:dana_abadi_app/src/screen/home/home_info_screen.dart';
import 'package:dana_abadi_app/src/screen/home/home_main_feature_screen.dart';
import 'package:dana_abadi_app/src/screen/home/home_slider_event_screen.dart';
import 'package:dana_abadi_app/src/screen/profile/profile_screen.dart';
import 'package:dana_abadi_app/src/screen/report/report_screen.dart';
import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardScreenItem extends StatefulWidget {
  const DashboardScreenItem({super.key});

  @override
  State<DashboardScreenItem> createState() => _DashboardScreenItemState();
}

class _DashboardScreenItemState extends State<DashboardScreenItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: ColorManager.tertiary,
          title: Container(
              padding: const EdgeInsets.only(left: AppPadding.p20),
              width: 150.0,
              child: Image.asset(
                'assets/images/tagline_image.png',
              )),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(
                  Iconsax.search_normal,
                  color: ColorManager.black,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 26.0),
              child: IconButton(
                icon: Icon(
                  Iconsax.message,
                  color: ColorManager.black,
                ),
                onPressed: () {},
                // color: const Color.fromARGB(255, 241, 241, 241),
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Container(
                width: 345.0,
                height: 200.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  gradient: const LinearGradient(colors: [
                    Color(0xFF005E6A),
                    Color(0xFF010708),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "We Rise by\nLifting Others",
                              style: getWhiteTextStyle(
                                fontWeight: FontWeightManager.semibold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 32.0, right: 24.0),
                          width: 88.0,
                          height: 88.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                '${AssetImageIconManager.assetPath}/care_image.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ColorManager.tertiary),
                            foregroundColor: MaterialStateProperty.all(
                                ColorManager.secondary),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/detail-donate-screen')},
                          child: const Text("Donasi Sekarang")),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),

              // ========== Main Menu ==========
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                    // ========== Fast Menu ==========
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Program Donasi",
                        style: getBlackTextStyle(
                            fontWeight: FontWeightManager.medium),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const HomeMainFeatureScreen(),

                      const SizedBox(
                        height: 24.0,
                      ),

                      // ========== Banner Donate Menu ==========
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Butuh Bantuan Anda Sekarang",
                              style: getBlackTextStyle(
                                  fontWeight: FontWeightManager.medium),
                            ),
                            Icon(
                              Iconsax.arrow_right_3,
                              color: ColorManager.black,
                            ),
                          ],
                        ),
                      ),
                      const HomeBannerDonateScreen(),

                      const SizedBox(
                        height: 8.0,
                      ),

                      // ========== Report Menu ==========
                      Text(
                        "Donasi Terkini",
                        style: getBlackTextStyle(
                            fontWeight: FontWeightManager.medium),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      const Text("Kami ucapkan terimakasih kepada"),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const HomeInfoScreen(),

                      const SizedBox(
                        height: 32.0,
                      ),

                      // ========== Event Menu ==========
                      Text(
                        "Event & Berita",
                        style: getBlackTextStyle(
                            fontWeight: FontWeightManager.medium),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const HomeSliderEvent(),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
