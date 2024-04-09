import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ChooseDonateScreen extends StatefulWidget {
  const ChooseDonateScreen({super.key});

  @override
  State<ChooseDonateScreen> createState() => _ChooseDonateScreenState();
}

class _ChooseDonateScreenState extends State<ChooseDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.tertiary,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Pilih Category Donasi',
          style: TextStyle(fontWeight: FontWeightManager.medium),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p32, vertical: AppPadding.p12),
        child: Column(
          children: [
            //===== Option 1 ======
            InkWell(
              onTap: () {{Navigator.pushNamed(context, '/general-donations-screen');}},
              child: Container(
                height: 60.0,
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
                decoration: BoxDecoration(
                  color: ColorManager.tertiary,
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.secondary.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/donation_icon.png",
                      height: 32.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      "Donasi Umum",
                      style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16,
                        color: Color(0xFF005E6A),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          // padding: const EdgeInsets.only(right: AppPadding.p40),
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Iconsax.arrow_right_3,
                            color: ColorManager.secondary,
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //===== Option 2 ======
            InkWell(
              onTap: () {{Navigator.pushNamed(context, '/alumni-donations-screen');}},
              child: Container(
                height: 60.0,
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
                decoration: BoxDecoration(
                  color: ColorManager.tertiary,
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.secondary.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/donation_icon.png",
                      height: 32.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      "Donasi Alumni",
                      style: TextStyle(
                          fontWeight: FontWeightManager.reguler,
                          fontSize: FontSizeManager.f16,
                          color: Color(0xFF005E6A)),
                    ),
                    Expanded(
                      child: Container(
                          // padding: const EdgeInsets.only(right: AppPadding.p40),
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Iconsax.arrow_right_3,
                            color: ColorManager.secondary,
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
