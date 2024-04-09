import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class DetailDonateScreen extends StatefulWidget {
  const DetailDonateScreen({super.key});

  @override
  State<DetailDonateScreen> createState() => _DetailDonateScreenState();
}

class _DetailDonateScreenState extends State<DetailDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.tertiary,
        elevation: 0.0,
        title: const Text(
          'Detail Donasi',
          style: TextStyle(fontWeight: FontWeightManager.medium),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: double.infinity,
                height: 167.0,
                child: Image.asset(
                  "assets/images/food_detail_program_image.png",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                child: Text(
                  "Donasi untuk orang kelaparan di Afrika",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSizeManager.f16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16, vertical: AppPadding.p12),
                child: Container(
                  width: double.infinity,
                  height: 175.0,
                  decoration: BoxDecoration(
                    color: ColorManager.tertiary,
                    borderRadius: BorderRadius.circular(AppSize.s16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset:
                            const Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 10.0),
                          child: Text(
                            "Total Donasi:",
                            style: TextStyle(
                                fontWeight: FontWeightManager.medium,
                                fontSize: FontSizeManager.f16),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                        width: 280.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                            color: ColorManager.grey,
                            borderRadius: BorderRadius.circular(100.0)),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        width: 150.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                            color: ColorManager.secondary,
                            borderRadius: BorderRadius.circular(100.0)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 14.0),
                        transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                        margin: const EdgeInsets.only(top: 10.0),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Target: Rp. 50.000.000",
                              style: TextStyle(
                                  color: Color(0xFF005E6A),
                                  fontSize: FontSizeManager.f12,
                                  fontWeight: FontWeightManager.semibold),
                            ),
                            Text(
                              "50%",
                              style: TextStyle(
                                  color: Color(0xFF005E6A),
                                  fontSize: FontSizeManager.f12,
                                  fontWeight: FontWeightManager.semibold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 14.0),
                        transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                        margin: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100.0,
                              height: 50.0,
                              child: Image.asset(
                                "assets/images/total_user_donate_image.png",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                               
                              },
                              child: const Text(
                                "Lihat Detail",
                                style: TextStyle(
                                    color: Color(0xFF3E8AE3),
                                    fontSize: FontSizeManager.f12,
                                    fontWeight: FontWeightManager.reguler),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
                child: Text(
                  "Deskripsi",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSizeManager.f16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat porta arcu, et rutrum felis fermentum et. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat porta arcu, et rutrum felis fermentum et.",
                  style: TextStyle(
                      fontWeight: FontWeightManager.light,
                      fontSize: FontSizeManager.f12),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16, vertical: AppPadding.p28),
                child: InkWell(
                  onTap: () {{Navigator.pushNamed(context, '/choose-donate-screen');}},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: ColorManager.secondary,
                      borderRadius: BorderRadius.circular(AppSize.s16),
                    ),
                    child: const Text(
                      "Donasi Sekarang",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSizeManager.f16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
