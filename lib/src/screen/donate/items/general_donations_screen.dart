import 'package:dana_abadi_app/src/model/common/custom_checkbox.dart';
import 'package:dana_abadi_app/src/model/common/custom_textfield.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

class GeneralDonationsScreen extends StatefulWidget {
  const GeneralDonationsScreen({super.key});

  @override
  State<GeneralDonationsScreen> createState() => _GeneralDonationsScreenState();
}

class _GeneralDonationsScreenState extends State<GeneralDonationsScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final currencyController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.secondary,
        foregroundColor: ColorManager.tertiary,
        title: const Text(
          "Donasi Umum",
          style: TextStyle(
            fontWeight: FontWeightManager.medium,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Silahkan isi form dibawah ini untuk menyelesaikan Donasi Umum",
                style: TextStyle(
                    fontWeight: FontWeightManager.medium,
                    fontSize: FontSizeManager.f16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextField(
                labelName: 'Nama',
                hintext: 'Masukan Nama',
                controller: nameController,
              ),
              CustomTextField(
                labelName: 'Email',
                hintext: 'Masukan Email',
                controller: emailController,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomCheckbox(),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        "Atau donasi sebagai Anonim",
                        style: TextStyle(
                            fontSize: FontSizeManager.f14,
                            fontWeight: FontWeightManager.reguler,
                            color: ColorManager.black60),
                      )
                    ],
                  )),
              // CustomTextField(
              //   labelName: 'Nominal',
              //   hintext: 'Rp. 0',
              //   controller: currencyController,
              // ),
              Padding(
                // ===== Custome Currency Textfield ======
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nominal",
                      style: TextStyle(
                          fontSize: FontSizeManager.f14,
                          fontWeight: FontWeightManager.reguler,
                          color: ColorManager.black30),
                    ),
                    const SizedBox(
                      height: AppSize.s8,
                    ),
                    TextField(
                      inputFormatters: <TextInputFormatter>[
                        CurrencyTextInputFormatter(
                          locale: 'ID',
                          decimalDigits: 0,
                          symbol: 'Rp. ',
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      //  controller: controller,
                      // obscureText: isObscure,
                      style: getBlackTextStyle(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p12,
                          horizontal: AppPadding.p30,
                        ),
                        filled: true,
                        fillColor: ColorManager.tertiary,
                        hintText: "Rp. 0",
                        hintStyle: TextStyle(
                            fontSize: FontSizeManager.f14,
                            fontWeight: FontWeightManager.reguler,
                            color: ColorManager.black30),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextField(
                labelName: 'Pesan',
                hintext: 'Masukan Pesan',
                controller: nameController,
              ),
              SizedBox(
                height: 56.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      {
                        Navigator.pushNamed(context, '/choose-donate-screen');
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: ColorManager.tertiary,
                        border: Border.all(color:ColorManager.secondary),
                        borderRadius: BorderRadius.circular(AppSize.s20),
                      ),
                      child: const Text(
                        "Kembali",
                        style: TextStyle(
                            color: Color(0xFF005E6A),
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSizeManager.f16),
                      ),
                    ),
                  ),
                  
                  InkWell(
                    onTap: () {
                      {
                        Navigator.pushNamed(context, '/metode-pembayaran-screen');
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: ColorManager.secondary,
                        borderRadius: BorderRadius.circular(AppSize.s20),
                      ),
                      child: const Text(
                        "Kirim",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSizeManager.f16),
                      ),
                    ),
                  ),
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
