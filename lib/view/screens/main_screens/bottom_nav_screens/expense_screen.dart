import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
// import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

// import 'package:flutter_svg/svg.dart';

class ExpenseScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  List<ExpenseModel> todayExpenses = <ExpenseModel>[
    ExpenseModel(
      name: "Biryani Lunch",
      category: ExpenseCategory.food,
      createdAt: DateTime.now(),
      expValue: 850,
    ),
    ExpenseModel(
      name: "Careem Ride",
      category: ExpenseCategory.tansport,
      createdAt: DateTime.now(),
      expValue: 620,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF4F6F8,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                "Expenses",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackColor,
                ),
              ),
              CustomTextField(
                hintText: "Search Expenses",
                prefixIcon: Icons.search,
                filledColor: AppColors.pureWhiteColor,
                isFilled: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 6,
                    children: [
                      SvgPicture.asset(AppAsset.leftArrowIcon),
                      Text(
                        "October 2026",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.color0F1B2D,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SvgPicture.asset(AppAsset.rightArrowIcon),
                    ],
                  ),
                  Text(
                    "Total Rs 40,000",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.color0B7A5A,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    _chip("All", true),
                    _chip("Food", false),
                    _chip("Transport", false),
                    _chip("Health", false),
                    _chip("Shopping", false),
                    _chip("Bill", false),
                    _chip("Fun", false),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [_daySection("Today", "Rs 1,470", todayExpenses)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(String label, bool isSelected) {
    return Container(
      height: 38,
      padding: EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blackColor : AppColors.pureWhiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? AppColors.blackColor : AppColors.colorE3E8EE,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: isSelected ? AppColors.pureWhiteColor : AppColors.blackColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _daySection(String title, String total, List<ExpenseModel> expenses) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14),
      child: Column(
        spacing: 6,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.color5B6778,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                total,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.pureWhiteColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.colorE3E8EE),
            ),
            // child: ListView.separated(
            //   itemCount: expenses.length,
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   padding: EdgeInsets.zero,
            //   separatorBuilder: (context, index) =>
            //       Divider(height: 1, color: AppColors.colorEEF1F4),
            // itemBuilder: (context, index) {
            // return _expenseCard(expenses[index]);
            // },
            // ),
          ),
        ],
      ),
    );
  }

  // Widget _expenseCard(ExpenseModel expenseModel) {
  //   String formattedTime = DateFormat("h:mm a").format(expenseModel.createdAt);

  //   return SizedBox(
  //     height: 64,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Row(
  //           spacing: 12,
  //           children: [
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [Text(expenseModel.name)],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
