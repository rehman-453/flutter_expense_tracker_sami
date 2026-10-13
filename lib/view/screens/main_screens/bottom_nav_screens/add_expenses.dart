import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class AddExpenses extends StatefulWidget {
  const new({super.key});

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  List<ExpenseCategory> listOfCategories = <ExpenseCategory>[
    ExpenseCategory(
      name: "Food",
      icon: AppAsset.foodIcon,
      color: AppColors.colorFFF1D6,
    ),
    ExpenseCategory(
      name: "Transport",
      icon: AppAsset.transportIcon,
      color: AppColors.colorDCEBFF,
    ),
    ExpenseCategory(
      name: "Bill",
      icon: AppAsset.billIcon,
      color: AppColors.colorEADFFD,
    ),
    ExpenseCategory(
      name: "Shopping",
      icon: AppAsset.shoppingIcon,
      color: AppColors.colorFCE1EE,
    ),
    ExpenseCategory(
      name: "Health",
      icon: AppAsset.healthIcon,
      color: AppColors.colorFDE1DE,
    ),
    ExpenseCategory(
      name: "Fun",
      icon: AppAsset.funIcon,
      color: AppColors.colorD5F3EF,
    ),
    ExpenseCategory(
      name: "Education",
      icon: AppAsset.educationIcon,
      color: AppColors.colorE4F0CF,
    ),
    ExpenseCategory(
      name: "Other",
      icon: AppAsset.otherIcon,
      color: AppColors.colorE7EAEE,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomButton(
          buttonColor: AppColors.greenColor,
          textColor: AppColors.pureWhiteColor,
          buttonText: "Save Expense",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
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
                    "Add Expense",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                ],
              ),

              Text(
                "Amount",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyColor,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    "Rs",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(width: 150, child: CustomTextField()),
                ],
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
                      child: InkWell(
                        onTap: () {
                          showGridViewBottomSheet();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 20,
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Text(
                                    "Category",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.greyColor,
                                    ),
                                  ),
                                ),
                                Row(
                                  spacing: 10,
                                  children: [
                                    _iconContainer(
                                      ExpenseCategory(
                                        name: "Food",
                                        icon: AppAsset.foodIcon,
                                        color: AppColors.colorFFF1D6,
                                      ),
                                    ),
                                    Text(
                                      "Food",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: AppColors.greyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(color: AppColors.whiteColor),
                    SizedBox(
                      height: 50,
                      child: InkWell(
                        onTap: () {
                          _selectDate();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 20,
                              children: [
                                SizedBox(
                                  width: 70,
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
                                  formattedDate,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: AppColors.greyColor,
                            ),
                          ],
                        ),
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
                                width: 70,
                                child: Text(
                                  "Note",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 260,
                                child: CustomTextField(
                                  hintText: "Lunch with Sami",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showGridViewBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: 500,
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 15,
            left: 10,
            right: 10,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            color: AppColors.pureWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose category",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.color0F1B2D,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.whiteColor),
                      ),
                      child: const Icon(Icons.close),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Expanded(
                child: GridView.builder(
                  itemCount: listOfCategories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: listOfCategories[index].isSelected
                            ? AppColors.colorD5F3EF
                            : AppColors.pureWhiteColor,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: AppColors.whiteColor),
                      ),
                      child: Stack(
                        children: [
                          listOfCategories[index].isSelected
                              ? Positioned(
                                  right: 5,
                                  top: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: AppColors.greenColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: AppColors.pureWhiteColor,
                                      size: 18,
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 7,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: listOfCategories[index].color,
                                  ),
                                  child: SvgPicture.asset(
                                    listOfCategories[index].icon,
                                  ),
                                ),
                                Text(
                                  listOfCategories[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: AppColors.color0F1B2D,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              CustomButton(
                buttonColor: AppColors.greenColor,
                buttonText: "Done",
                textColor: AppColors.pureWhiteColor,
              ),
            ],
          ),
        );
      },
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

  String formattedDate = "Select Date";

  Future<void> _selectDate() async {
    final DateTime? pickDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2021, 7, 25),
      firstDate: DateTime(2021),
      lastDate: DateTime(2030),
    );

    setState(() {
      formattedDate = DateFormat('yyyy-MM-dd')
          .format(pickDate ?? DateTime.now());
    });
  }
}
