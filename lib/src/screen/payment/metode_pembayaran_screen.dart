import 'package:dana_abadi_app/src/model/common/custom_checkbox.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MetodePembayaranScreen extends StatefulWidget {
  const MetodePembayaranScreen({super.key});

  @override
  State<MetodePembayaranScreen> createState() => _MetodePembayaranScreenState();
}

class _MetodePembayaranScreenState extends State<MetodePembayaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.tertiary,
        foregroundColor: ColorManager.black,
        title: const Text(
          "Metode Pembayaran",
          style: TextStyle(
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: AppPadding.p12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p36,
              ),
              alignment: Alignment.centerLeft,
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.grey,
              ),
              child: const Text(
                "Virtual Account",
                style: TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: FontSizeManager.f18),
              ),
            ),

            // ===== Payment 1 =====
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p36),
              alignment: Alignment.centerLeft,
              height: 64.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.tertiary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/mandiri_icon.png",
                    height: 24.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "BANK MANDIRI",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: AppMargin.m12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomCheckbox(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            // ===== Payment 2 =====
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p36),
              alignment: Alignment.centerLeft,
              height: 64.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.tertiary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/bca_icon.png",
                    height: 24.0,
                  ),
                  const SizedBox(
                    width: 18.0,
                  ),
                  const Text(
                    "BANK BCA",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: AppMargin.m12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomCheckbox(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            // ===== Payment 3 =====
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p31),
              alignment: Alignment.centerLeft,
              height: 64.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.tertiary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/bni_icon.png",
                    height: 24.0,
                  ),
                  const SizedBox(
                    width: 32.0,
                  ),
                  const Text(
                    "BANK BNI",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: AppMargin.m12, horizontal: AppMargin.m4),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomCheckbox(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p32,
              ),
              alignment: Alignment.centerLeft,
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.grey,
              ),
              child: const Text(
                "QR Payment",
                style: TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: FontSizeManager.f18),
              ),
            ),

            // ===== Payment 4 =====
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p34),
              alignment: Alignment.centerLeft,
              height: 64.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.tertiary,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/qris_icon.png",
                    height: 24.0,
                  ),
                  const SizedBox(
                    width: 32.0,
                  ),
                  const Text(
                    "QR Code",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler,
                        fontSize: FontSizeManager.f16),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: AppMargin.m12),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomCheckbox(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16, vertical: AppPadding.p28),
              child: InkWell(
                onTap: () {
                  {
                    Navigator.pushNamed(context, '/confirm-payment-screen');
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p50,
                  ),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: ColorManager.secondary,
                    borderRadius: BorderRadius.circular(AppSize.s16),
                  ),
                  child: const Text(
                    "Selanjutnya",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeightManager.medium,
                        fontSize: FontSizeManager.f16),
                  ),
                ),
              ),
            ),
            // Expanded(
            //     child: Container(
            //   padding: EdgeInsets.symmetric(vertical: 40.0),
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: const Text('Bottom Button!'),
            //     ),
            //   ),
            // ))
          ],
        ),
      ),
    );
  }
}
