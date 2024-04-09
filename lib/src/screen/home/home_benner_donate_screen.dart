import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:flutter/material.dart';

class HomeBannerDonateScreen extends StatefulWidget {
  const HomeBannerDonateScreen({
    super.key,
  });

  @override
  State<HomeBannerDonateScreen> createState() => _HomeBannerDonateScreenState();
}

class _HomeBannerDonateScreenState extends State<HomeBannerDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ====== Content 1 ======
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-donate-screen');
                    },
                    child: Container(
                      width: 280.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: ColorManager.tertiary,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/food_program_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail-donate-screen');
                },
                child: Container(
                  transform: Matrix4.translationValues(0.0, -24.0, 0.0),
                  width: 280.0,
                  height: 110.0,
                  decoration: BoxDecoration(
                    color: ColorManager.tertiary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Donasi untuk orang kelaparan di Afrika",
                          style: TextStyle(
                              fontSize: FontSizeManager.f12,
                              fontWeight: FontWeightManager.semibold),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          width: 260.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                              color: ColorManager.grey,
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                          width: 130.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                              color: ColorManager.secondary,
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            width: 20.0,
          ),

          // ====== Content 2 ======
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-donate-screen');
                    },
                    child: Container(
                      width: 280.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: ColorManager.tertiary,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: const Offset(
                                1, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/education_program_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail-donate-screen');
                },
                child: Container(
                  transform: Matrix4.translationValues(0.0, -24.0, 0.0),
                  width: 280.0,
                  height: 110.0,
                  decoration: BoxDecoration(
                    color: ColorManager.tertiary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Donasi paket pendidikan ",
                          style: TextStyle(
                              fontSize: FontSizeManager.f12,
                              fontWeight: FontWeightManager.semibold),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          width: 260.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                              color: ColorManager.grey,
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                          width: 100.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                              color: ColorManager.secondary,
                              borderRadius: BorderRadius.circular(100.0)),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Target: Rp. 30.000.000",
                                style: TextStyle(
                                    color: Color(0xFF005E6A),
                                    fontSize: FontSizeManager.f12,
                                    fontWeight: FontWeightManager.semibold),
                              ),
                              Text(
                                "30%",
                                style: TextStyle(
                                    color: Color(0xFF005E6A),
                                    fontSize: FontSizeManager.f12,
                                    fontWeight: FontWeightManager.semibold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
