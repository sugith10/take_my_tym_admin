import 'package:flutter/material.dart';
import 'package:take_my_tym_admin/presentation/widgets/app_logo_widget.dart';
import 'package:take_my_tym_admin/util/app_colors.dart';
import 'package:take_my_tym_admin/util/side_menu_data.dart';
import 'package:take_my_tym_admin/util/app_radius.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          const SizedBox(height: 25),
          const Center(child: AppLogo()),
          const SizedBox(height: 35),
          const Divider(),
          const SizedBox(height: 45),
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.menu.length,
            itemBuilder: (context, index) => buildMenuEntry(data, index),
          ),
        ],
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final bool isSelected = selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: MyAppRadius.halfRound,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isSelected
              ? MyAppColors.secondaryColor
              : MyAppColors.primaryColor,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                child: Icon(
                  data.menu[index].icon,
                  color: isSelected
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.grey,
                ),
              ),
              Text(
                data.menu[index].title,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.grey,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

