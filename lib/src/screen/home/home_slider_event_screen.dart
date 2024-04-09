import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';

class HomeSliderEvent extends StatefulWidget {
  const HomeSliderEvent({super.key});

  @override
  State<HomeSliderEvent> createState() => _HomeSliderEventState();
}

class _HomeSliderEventState extends State<HomeSliderEvent> {

  int currentindex = 0;

  List<String> images = [
    "assets/images/event_image.png",
    "assets/images/event_image.png",
    "assets/images/event_image.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: SizedBox(
                height: 100.0,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      currentindex = index % images.length;
                    });
                  },
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: SizedBox(
                        height: 100.0,
                        width: double.infinity,
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                    );
                  }),
              ),
            ),
          ),
      
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            for (var i = 0; i < images.length; i++) buildIndicator(currentindex == i) 
          ],)
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        height: isSelected ? 8 : 6 ,
        width: isSelected ? 48 : 14 ,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(100),
          color: isSelected ? ColorManager.secondary : ColorManager.black30,
        ),
      ),
    );
  }
}
