import 'package:flutter_expense_tracker_sami/model/expense_model.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';

List<ExpenseCategory> listOfCategories = <ExpenseCategory>[
  ExpenseCategory(
    name: "Food",
    icon: AppAsset.foodIcon,
    color: AppColors.colorFFF1D6,
    isSelected: true,
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
  // ExpenseCategory(
  //   name: "Other",
  //   icon: AppAsset.otherIcon,
  //   color: AppColors.colorE7EAEE,
  // ),
];

List<ExpenseModel> listOfExpenses = <ExpenseModel>[
  ExpenseModel(
    name: "Biryani",
    category: ExpenseCategory(
      name: "Food",
      icon: AppAsset.foodIcon,
      color: AppColors.colorFFF1D6,
    ),
    createdAt: DateTime.now(),
    expValue: 850,
  ),
  ExpenseModel(
    name: "Careem Ride",
    category: ExpenseCategory(
      name: "Transport",
      icon: AppAsset.transportIcon,
      color: AppColors.colorDCEBFF,
    ),
    createdAt: DateTime.now(),
    expValue: 620,
  ),
  ExpenseModel(
    name: "Pharmacy",
    category: ExpenseCategory(
      name: "Health",
      icon: AppAsset.healthIcon,
      color: AppColors.colorFDE1DE,
    ),
    createdAt: DateTime.now(),
    expValue: 940,
  ),
  ExpenseModel(
    name: "Daraz Order",
    category: ExpenseCategory(
      name: "Shopping",
      icon: AppAsset.shoppingIcon,
      color: AppColors.colorFCE1EE,
    ),
    createdAt: DateTime.now(),
    expValue: 3200,
  ),
  ExpenseModel(
    name: "K-Electric",
    category: ExpenseCategory(
      name: "Bill",
      icon: AppAsset.billIcon,
      color: AppColors.colorEADFFD,
    ),
    createdAt: DateTime.now(),
    expValue: 7400,
  ),
];
