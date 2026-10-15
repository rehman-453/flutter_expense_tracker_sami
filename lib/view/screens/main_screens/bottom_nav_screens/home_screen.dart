import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
// import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/utils/global.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/expense_detail.dart';
import 'package:flutter_svg/svg.dart';

import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<ExpenseModel> listOfExpenses = <ExpenseModel>[
  //   ExpenseModel(
  //     name: "Biryani",
  //     category: ExpenseCategory(
  //       name: "Food",
  //       icon: AppAsset.foodIcon,
  //       color: AppColors.colorFFF1D6,
  //     ),
  //     createdAt: DateTime.now(),
  //     expValue: 850,
  //   ),
  //   ExpenseModel(
  //     name: "Careem Ride",
  //     category: ExpenseCategory(
  //       name: "Transport",
  //       icon: AppAsset.transportIcon,
  //       color: AppColors.colorDCEBFF,
  //     ),
  //     createdAt: DateTime.now(),
  //     expValue: 620,
  //   ),
  //   ExpenseModel(
  //     name: "Pharmacy",
  //     category: ExpenseCategory(
  //       name: "Health",
  //       icon: AppAsset.healthIcon,
  //       color: AppColors.colorFDE1DE,
  //     ),
  //     createdAt: DateTime.now(),
  //     expValue: 940,
  //   ),
  //   ExpenseModel(
  //     name: "Daraz Order",
  //     category: ExpenseCategory(
  //       name: "Shopping",
  //       icon: AppAsset.shoppingIcon,
  //       color: AppColors.colorFCE1EE,
  //     ),
  //     createdAt: DateTime.now(),
  //     expValue: 3200,
  //   ),
  //   ExpenseModel(
  //     name: "K-Electric",
  //     category: ExpenseCategory(
  //       name: "Bill",
  //       icon: AppAsset.billIcon,
  //       color: AppColors.colorEADFFD,
  //     ),
  //     createdAt: DateTime.now(),
  //     expValue: 7400,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning,",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.color5B6778,
                        ),
                      ),
                      Text(
                        "Sami",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.colorDCF2E8,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "S",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.color0B7A5A,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              _spendingCard(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: listOfExpenses.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return _expenseCard(listOfExpenses[index]);
                  },
                ),
              ),
              // ListView.separated(
              //   itemCount: listOfExpenses.length,
              //   shrinkWrap: true,
              //   separatorBuilder: (context, index) => SizedBox(height: 10),
              //   itemBuilder: (context, index) {
              //     return _expenseCard(listOfExpenses[index]);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconContainer(ExpenseCategory expenseCategory) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: expenseCategory.color,
      ),
      child: SvgPicture.asset(expenseCategory.icon),
    );
  }

  Widget _expenseCard(ExpenseModel expenseModel) {
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm a')
        .format(expenseModel.createdAt);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.pureWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 15,
            children: [
              _iconContainer(expenseModel.category),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExpenseDetail(),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          expenseModel.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: AppColors.color0F1B2D,
                          ),
                        ),
                        Text(
                          "Food - $formattedDate",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   expenseModel.name,
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w700,
                  //     fontSize: 15,
                  //     color: AppColors.color0F1B2D,
                  //   ),
                  // ),
                  // Text(
                  //   "Food - $formattedDate",
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w400,
                  //     fontSize: 13,
                  //     color: AppColors.greyColor,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
          Text(
            "Rs ${expenseModel.expValue.toString()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _spendingCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 125,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "October Spending",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColors.pureWhiteColor,
            ),
          ),
          Text(
            "Rs 40,000",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: AppColors.pureWhiteColor,
            ),
          ),
          LinearProgressIndicator(
            color: AppColors.pureWhiteColor,
            value: 0.67,
            backgroundColor: AppColors.pureWhiteColor.withValues(alpha: 0.15),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "67% of Rs 60,000 budget",
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.pureWhiteColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Rs 20,000 left",
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.pureWhiteColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
