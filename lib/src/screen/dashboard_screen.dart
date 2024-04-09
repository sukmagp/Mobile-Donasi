import 'package:dana_abadi_app/src/screen/profile/profile_screen.dart';
import 'package:dana_abadi_app/src/screen/report/report_screen.dart';
import 'package:dana_abadi_app/src/screen/dashboard_item.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget child = const SizedBox();

    switch (_currentIndex) {
      case 0:
        child = DashboardScreenItem();
        break;
      case 1:
        child = ReportScreen();
        break;
      case 2:
        child = ProfileScreen();
        break;
    }
    return Scaffold(
      body: child,

      // ========== Navigation Menu ==========
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorManager.tertiary,
        elevation: 4.0,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.document), label: 'Laporan Keuangan'),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
