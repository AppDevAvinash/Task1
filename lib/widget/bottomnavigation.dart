import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/controller/bottom_nav_control.dart';

class CustomBottomNavBar extends StatelessWidget {
  final BottomNavController controller = Get.find();

  final List<Map<String, dynamic>> navItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.info, 'label': 'About'},
    {'icon': Icons.location_on, 'label': 'Location'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navItems.length, (index) {
            final item = navItems[index];
            final isSelected = controller.selectedIndex.value == index;

            return GestureDetector(
              onTap: () => controller.changeTabIndex(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    item['icon'],
                    color: isSelected ? Colors.red : Colors.grey,
                  ),
                  Text(
                    item['label'],
                    style: TextStyle(
                      color: isSelected ? Colors.red : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
