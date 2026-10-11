import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_asset.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_text_field.dart';
import 'package:flutter_expense_tracker_sami/view/screens/auth/signup_screen.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_home_nav_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordHidden = true;

  void onEyeTapped() {
    isPasswordHidden = !isPasswordHidden;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(AppAsset.walletIcon, scale: 2),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Text(
                        "Wellcome back",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                        ),
                      ),
                      Text(
                        "Login to see your expenses on ay device",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 25,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CustomTextField(hintText: "abc@mail.com"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CustomTextField(
                        hintText: "***********",
                        suffixIcon: isPasswordHidden
                            ? Icons.visibility_off
                            : Icons.remove_red_eye_rounded,
                        onSuffixTap: () {
                          onEyeTapped();
                        },
                        isObscure: isPasswordHidden,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: AppColors.color0B7A5A,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  CustomButton(
                    buttonColor: AppColors.greenColor,
                    textColor: AppColors.pureWhiteColor,
                    buttonText: "Login",
                    onButtonTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomHomeNavScreen(),
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.whiteColor,
                          indent: 2,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.whiteColor,
                          indent: 2,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  CustomButton(
                    buttonColor: AppColors.pureWhiteColor,
                    textColor: AppColors.blackColor,
                    buttonText: "Continue with Google",
                  ),
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "New to kharcha?",
                    style: TextStyle(color: AppColors.greyColor, fontSize: 15),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                        text: " Create Account",
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
