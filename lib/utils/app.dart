import 'package:dana_abadi_app/src/screen/dashboard_screen.dart';
import 'package:dana_abadi_app/src/screen/donate/choose_donate_screen.dart';
import 'package:dana_abadi_app/src/screen/donate/detail_donate_screen.dart';
import 'package:dana_abadi_app/src/screen/donate/items/alumni_donations_screen.dart';
import 'package:dana_abadi_app/src/screen/donate/items/general_donations_screen.dart';
import 'package:dana_abadi_app/src/screen/login/login_screen.dart';
import 'package:dana_abadi_app/src/screen/login/register_screen.dart';
import 'package:dana_abadi_app/src/screen/login/second_hero_screen.dart';
import 'package:dana_abadi_app/src/screen/payment/confirm_payment_screen.dart';
import 'package:dana_abadi_app/src/screen/payment/metode_pembayaran_screen.dart';
import 'package:dana_abadi_app/src/screen/profile/profile_screen.dart';
import 'package:dana_abadi_app/src/screen/report/report_screen.dart';
import 'package:dana_abadi_app/src/screen/splash_screen.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ColorManager.tertiary),
      home: const SplashScreen(),
      routes: {
        '/dashboard-screen': (context) => const DashboardScreen(),
        '/profile-screen': (context) => const ProfileScreen(),
        '/report-screen': (context) => const ReportScreen(),
        '/detail-donate-screen': (context) => const DetailDonateScreen(),
        '/choose-donate-screen': (context) => const ChooseDonateScreen(),
        '/general-donations-screen': (context) =>
            const GeneralDonationsScreen(),
        '/alumni-donations-screen': (context) => const AlumniDonationsScreen(),
        '/metode-pembayaran-screen': (context) =>
            const MetodePembayaranScreen(),
        '/confirm-payment-screen': (context) => const ConfirmPaymentScreen(),
        '/second-hero-screen': (context) => const SecondHeroScreen(),
        '/login-screen': (context) => const LoginScreen(),
        '/register-screen': (context) => const RegisterScreen(),
      },
    );
  }
}
