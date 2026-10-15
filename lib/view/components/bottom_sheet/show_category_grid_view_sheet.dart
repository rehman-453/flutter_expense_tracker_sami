import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_svg/svg.dart';

class ShowCategoryGridViewSheet extends StatefulWidget {
  final List<ExpenseCategory> listOfCategory;

  const ShowCategoryGridViewSheet({super.key, required this.listOfCategory});

  @override
  State<ShowCategoryGridViewSheet> createState() =>
      _ShowCategoryGridViewSheetState();
}

class _ShowCategoryGridViewSheetState extends State<ShowCategoryGridViewSheet> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
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
              itemCount: widget.listOfCategory.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    for (var element in widget.listOfCategory) {
                      element.isSelected = false;
                    }
                    widget.listOfCategory[index].isSelected = true;
                    selectedCategoryIndex = index;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.listOfCategory[index].isSelected
                          ? AppColors.colorD5F3EF
                          : AppColors.pureWhiteColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.whiteColor),
                    ),
                    child: Stack(
                      children: [
                        widget.listOfCategory[index].isSelected
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
                                  color: widget.listOfCategory[index].color,
                                ),
                                child: SvgPicture.asset(
                                  widget.listOfCategory[index].icon,
                                ),
                              ),
                              Text(
                                widget.listOfCategory[index].name,
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
            onButtonTap: () {
              Navigator.pop(
                context,
                widget.listOfCategory[selectedCategoryIndex],
              );
            },
          ),
        ],
      ),
    );
  }
}
