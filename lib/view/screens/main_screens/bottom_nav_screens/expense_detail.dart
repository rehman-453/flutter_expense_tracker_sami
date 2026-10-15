import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_nav_screens/edit_expense.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

// import 'package:intl/intl.dart';

class ExpenseDetail extends StatefulWidget {
  final ExpenseModel expenseModel;
  final Widget categoryIcon;
  const ExpenseDetail({
    super.key,
    required this.expenseModel,
    required this.categoryIcon,
  });

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
                ],
              ),
              widget.categoryIcon,
              Text(
                "Rs ${widget.expenseModel.expValue.toString()}",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
              Text(
                widget.expenseModel.name,
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
                  borderRadius: BorderRadius.circular(15),
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
                                widget.expenseModel.category.name,
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
                                DateFormat('yyyy-MM-dd')
                                    .format(widget.expenseModel.createdAt),
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
                                DateFormat('HH:mm a')
                                    .format(widget.expenseModel.createdAt),
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
                                widget.expenseModel.note ?? "Example Note",
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
            "Rs ${widget.expenseModel.expValue.toString()} (${widget.expenseModel.category.name}) will be removed from your (${DateFormat('MMMM yyyy').format(widget.expenseModel.createdAt)}) total. This can't be undone.",
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
