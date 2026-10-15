import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/edit_expense.dart';
import 'package:flutter_svg/svg.dart';

class ExpenseDetail extends StatefulWidget {
  const ExpenseDetail({super.key});

  @override
  State<ExpenseDetail> createState() => _ExpenseDetailState();
}

class _ExpenseDetailState extends State<ExpenseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.pureWhiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.whiteColor),
                      ),
                      child: Icon(Icons.close),
                    ),
                  ),
                  Text(
                    "Expense Detail",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDeleteDialog(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.pureWhiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.whiteColor),
                      ),
                      child: SvgPicture.asset(AppAsset.deleteIcon),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: AppColors.pureWhiteColor,
                  //     shape: BoxShape.circle,
                  //     border: Border.all(color: AppColors.whiteColor),
                  //   ),
                  //   child: SvgPicture.asset(AppAsset.deleteIcon),
                  // ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.colorFFF1D6,
                ),
                child: SvgPicture.asset(AppAsset.foodIcon),
              ),
              Text(
                "Rs 850",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
              Text(
                "Biryani Lunch",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.pureWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 390,
                                child: Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              Text(
                                "Food",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(color: AppColors.whiteColor),

                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 323,
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              Text(
                                "Fri, 2 Oct 2026",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(color: AppColors.whiteColor),

                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 360,
                                child: Text(
                                  "Time",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              Text(
                                "1:15 PM",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(color: AppColors.whiteColor),

                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 20,
                            children: [
                              SizedBox(
                                width: 305,
                                child: Text(
                                  "Note",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              Text(
                                "Lunch with Sami",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              CustomButton(
                buttonColor: AppColors.greenColor,
                textColor: AppColors.pureWhiteColor,
                buttonText: "Edit Expense",
                onButtonTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditExpense(),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              CustomButton(
                buttonColor: AppColors.whiteColor,
                textColor: AppColors.blackColor,
                buttonText: "Delete Expense",
                onButtonTap: () => _showDeleteDialog(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.colorFDE8E6,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColors.colorFDE8E6),
                ),
                child: SvgPicture.asset(
                  AppAsset.deleteIcon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    AppColors.colorB42318,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Delete this Expense',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
          content: Text(
            "Rs 850 (Food) will be removed from your October total. This can't be undone.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.greyColor,
            ),
          ),
          // actions: [
          //   Column(
          //     children: [
          //       CustomButton(
          //         buttonColor: AppColors.pureWhiteColor,
          //         textColor: AppColors.blackColor,
          //         buttonText: "Cancel",
          //       ),
          //       SizedBox(width: 10),
          //       CustomButton(
          //         buttonColor: AppColors.colorB42318,
          //         textColor: AppColors.pureWhiteColor,
          //         buttonText: "Delete",
          //       ),
          //     ],
          //   ),
          // ],
          actions: [
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onButtonTap: () {
                      Navigator.pop(context);
                    },
                    buttonColor: AppColors.pureWhiteColor,
                    textColor: AppColors.blackColor,
                    buttonText: "Cancel",
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    onButtonTap: () {
                      Navigator.pop(context);
                    },
                    buttonColor: AppColors.colorB42318,
                    textColor: AppColors.pureWhiteColor,
                    buttonText: "Delete",
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
