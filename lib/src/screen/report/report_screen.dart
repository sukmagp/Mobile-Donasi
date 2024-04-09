import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorManager.secondary,
        foregroundColor: ColorManager.tertiary,
        title: const Text(
          "Laporan Keuangan",
          style: TextStyle(
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Saldo Dana Abadi Semester 1 Tahun 2023",
              style: TextStyle(
                  fontWeight: FontWeightManager.medium, fontSize: 14.0),
            ),

            //===== report 1 =====
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Saldo Dana Abadi\nSemester 1 Tahun 2023",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler, fontSize: 12.0),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 32.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: ColorManager.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Saldo Per 30 Juni 2023",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeightManager.reguler,
                          fontSize: 10.0,
                          color: ColorManager.primary),
                    ),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pokok",
                  style: TextStyle(
                      fontWeight: FontWeightManager.reguler,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hasil Penempatan",
                  style: TextStyle(
                      fontWeight: FontWeightManager.reguler,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.secondary),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.secondary),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),

            // ===== report 2 ======
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Saldo Dana Abadi\nSemester 1 Tahun 2023",
                    style: TextStyle(
                        fontWeight: FontWeightManager.reguler, fontSize: 12.0),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 32.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      color: ColorManager.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Saldo Per 30 Juni 2023",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeightManager.reguler,
                          fontSize: 10.0,
                          color: ColorManager.primary),
                    ),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Giro",
                  style: TextStyle(
                      fontWeight: FontWeightManager.reguler,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Deposito",
                  style: TextStyle(
                      fontWeight: FontWeightManager.reguler,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sukuk",
                  style: TextStyle(
                      fontWeight: FontWeightManager.reguler,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.black),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.secondary),
                ),
                Text(
                  "Rp 51.747.870.759.175",
                  style: TextStyle(
                      fontWeight: FontWeightManager.medium,
                      fontSize: 12.0,
                      color: ColorManager.secondary),
                ),
              ],
            ),
            const Divider(
              height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
