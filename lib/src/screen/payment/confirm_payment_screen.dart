import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ConfirmPaymentScreen extends StatefulWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  State<ConfirmPaymentScreen> createState() => _ConfirmPaymentScreenState();
}

class _ConfirmPaymentScreenState extends State<ConfirmPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.tertiary,
        foregroundColor: ColorManager.black,
        title: const Text(
          "Konfirmasi Pembayaran",
          style: TextStyle(
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p12, horizontal: AppPadding.p30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p36,
              ),
              alignment: Alignment.topCenter,
              height: 80.0,
              width: 340.0,
              decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                child: const Text(
                  "Virtual Account",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: FontSizeManager.f18,
                      color: Colors.white),
                ),
              ),
            ),
// ===================================================================================================================//
            Container(
              transform: Matrix4.translationValues(0.0, -32.0, 0.0),
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p18,
              ),
              alignment: Alignment.topCenter,
              height: 310.0,
              width: 340.0,
              decoration: BoxDecoration(
                color: ColorManager.tertiary,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: AppPadding.p20,
                    ),
                    margin: EdgeInsets.only(left: AppMargin.m32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Transfer ke",
                          style: TextStyle(
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSizeManager.f14,
                              color: Colors.black),
                        ),
                        Image.asset(
                          "assets/images/mandiri_icon.png",
                          height: 17.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppPadding.p12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Iconsax.money,
                          color: Colors.black87,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorManager.secondary.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              )),
                          child: Container(
                            margin: EdgeInsets.only(left: AppMargin.m12),
                            alignment: Alignment.centerLeft,
                            height: 32.0,
                            child: const Text(
                              "7228820021346075",
                              style: TextStyle(
                                  fontWeight: FontWeightManager.medium,
                                  fontSize: FontSizeManager.f14,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorManager.secondary.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                )),
                            child: Container(
                              margin: EdgeInsets.only(right: AppMargin.m12),
                              alignment: Alignment.centerRight,
                              height: 32.0,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Salin",
                                    style: TextStyle(color: Color(0xFF3E8AE3)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: AppPadding.p12,
                    ),
                    margin: EdgeInsets.only(left: AppMargin.m32),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Jumlah Bayar",
                      style: TextStyle(
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSizeManager.f14,
                          color: ColorManager.black60),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: AppMargin.m32, bottom: AppMargin.m12),
                    decoration: BoxDecoration(
                        color: ColorManager.secondary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Container(
                      margin: EdgeInsets.only(left: AppMargin.m12),
                      alignment: Alignment.centerLeft,
                      height: 32.0,
                      child: const Text(
                        "Rp. 150.000",
                        style: TextStyle(
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSizeManager.f14,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppPadding.p12),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Iconsax.clock,
                          // color: Color(0xFFFF0000),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Selesaikan pembayaran sebelum\n17.30 PM",
                          style: TextStyle(
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSizeManager.f14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: AppMargin.m32),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Selesaikan dalam 25m 13s",
                      style: TextStyle(
                          fontWeight: FontWeightManager.light,
                          fontSize: FontSizeManager.f12,
                          color: ColorManager.black60),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p28),
                child: InkWell(
                  onTap: () {{Navigator.pushNamed(context, '/dashboard-screen');}},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: ColorManager.secondary,
                      borderRadius: BorderRadius.circular(AppSize.s16),
                    ),
                    child: const Text(
                      "Konfirmasi Pembayaran",
                      style: TextStyle(
                          color: Colors.white,
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
