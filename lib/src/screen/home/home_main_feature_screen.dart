import 'package:dana_abadi_app/src/model/menu/menu_model.dart';
// import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/style_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class HomeMainFeatureScreen extends StatefulWidget {
  const HomeMainFeatureScreen({super.key});

  @override
  State<HomeMainFeatureScreen> createState() => _HomeMainFeatureScreenState();
}

class _HomeMainFeatureScreenState extends State<HomeMainFeatureScreen> {
  List<MenuModel> menu = [
    MenuModel(
      image: 'assets/images/human_program_icon.png',
      title: "Human",
      slug: "Human",
    ),
    MenuModel(
      image:
          'assets/images/medicine_program_icon.png',
      title: "Medicine",
      slug: "Medicine",
    ),
    MenuModel(
      image:
          'assets/images/education_program_icon.png',
      title: "Education",
      slug: "Education",
    ),
    MenuModel(
      image: 'assets/images/food_program_icon.png',
      title: "Food",
      slug: "Food",
    ),
  ];

// State Route

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: 4,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: menu.length,
      shrinkWrap: true,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      itemBuilder: (context, index) {
        final item = menu[index];
        return InkWell(
          onTap: () => {},
          child: Column(
            children: [
              Image.asset(
                item.image, 
                width: 80.0,
                height: 80.0,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                item.title,
                style: getBlackTextStyle().copyWith(
                  fontSize: AppSize.s12,
                  color: ColorManager.secondary,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
