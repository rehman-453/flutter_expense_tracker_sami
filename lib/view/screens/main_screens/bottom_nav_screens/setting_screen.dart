import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';

class SettingScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                        "Settings",
                        style: TextStyle(
                          fontSize: 28,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Container(
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: AppColors.pureWhiteColor,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         spacing: 15,
              //         children: [
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Container(
              //                 padding: EdgeInsets.all(10),
              //                 decoration: BoxDecoration(
              //                   color: AppColors.whiteColor,
              //                   shape: BoxShape.circle,
              //                   border: Border.all(color: AppColors.whiteColor),
              //                 ),
              //                 child: Text(
              //                   "S",
              //                   style: TextStyle(
              //                     fontSize: 22,
              //                     fontWeight: FontWeight.w800,
              //                     color: AppColors.greyColor,
              //                   ),
              //                 ),
              //               ),
              //               Text(
              //                 "Sami",
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.w700,
              //                   fontSize: 15,
              //                   color: AppColors.color0F1B2D,
              //                 ),
              //               ),
              //               Text(
              //                 "Data Saved on this Device",
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.w400,
              //                   fontSize: 13,
              //                   color: AppColors.greyColor,
              //                 ),
              //               ),
              //               // InkWell(
              //               //   onTap: () {
              //               //     Navigator.push(
              //               //       context,
              //               //       MaterialPageRoute(
              //               //         builder: (context) => ExpenseDetail(),
              //               //       ),
              //               //     );
              //               //   },
              //               //   child: Column(
              //               //     crossAxisAlignment: CrossAxisAlignment.start,
              //               //     children: [
              //               //       Text(
              //               //         "Sami",
              //               //         style: TextStyle(
              //               //           fontWeight: FontWeight.w700,
              //               //           fontSize: 15,
              //               //           color: AppColors.color0F1B2D,
              //               //         ),
              //               //       ),
              //               //       Text(
              //               //         "Data Saved on this Device",
              //               //         style: TextStyle(
              //               //           fontWeight: FontWeight.w400,
              //               //           fontSize: 13,
              //               //           color: AppColors.greyColor,
              //               //         ),
              //               //       ),
              //               //     ],
              //               //   ),
              //               // ),
              //               // Text(
              //               //   expenseModel.name,
              //               //   style: TextStyle(
              //               //     fontWeight: FontWeight.w700,
              //               //     fontSize: 15,
              //               //     color: AppColors.color0F1B2D,
              //               //   ),
              //               // ),
              //               // Text(
              //               //   "Food - $formattedDate",
              //               //   style: TextStyle(
              //               //     fontWeight: FontWeight.w400,
              //               //     fontSize: 13,
              //               //     color: AppColors.greyColor,
              //               //   ),
              //               // ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       Text(
              //         "Edit",
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 15,
              //           color: AppColors.blackColor,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
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
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.pureWhiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.whiteColor),
                          ),
                          child: Text(
                            "S",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.color0B7A5A,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sami",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: AppColors.color0F1B2D,
                              ),
                            ),
                            Text(
                              "Data Saved on this Device",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.blackColor,
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
}
