import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
// import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/add_expenses.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/expense_screen.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/home_screen.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/setting_screen.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/summary_screen.dart';
import 'package:flutter_svg/svg.dart';

class BottomHomeNavScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<BottomHomeNavScreen> createState() => _BottomHomeNavScreenState();
}

class _BottomHomeNavScreenState extends State<BottomHomeNavScreen> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List listOfScreens = [
    HomeScreen(),
    ExpenseScreen(),
    // AddExpenses(),
    SummaryScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAsset.homeIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAsset.expenseIcon),
            label: 'Expense',
          ),
          // BottomNavigationBarItem(
          //   icon: Container(
          //     padding: const EdgeInsets.all(10),
          //     decoration: BoxDecoration(
          //       color: AppColors.greenColor,
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     child: SvgPicture.asset(
          //       AppAsset.addIcon,
          //       colorFilter: const ColorFilter.mode(
          //         Colors.white,
          //         BlendMode.srcIn,
          //       ),
          //     ),
          //   ),
          //   label: 'Add Expense',
          // ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAsset.summaryIcon),
            label: 'Summary',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAsset.settingIcon),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.greenColor,
        unselectedItemColor: AppColors.greyColor,
        onTap: onItemTapped,
      ),
    );
  }
}
