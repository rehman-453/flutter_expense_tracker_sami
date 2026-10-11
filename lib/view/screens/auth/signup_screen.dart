import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker_sami/utils/app_colors.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_button.dart';
import 'package:flutter_expense_tracker_sami/view/components/custom_text_field.dart';
import 'package:flutter_expense_tracker_sami/view/screens/main_screens/bottom_home_nav_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  void onEyeTapped() {
    isPasswordHidden = !isPasswordHidden;
    setState(() {});
  }

  void onConfirmEyeTapped() {
    isConfirmPasswordHidden = !isConfirmPasswordHidden;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.pureWhiteColor,
              border: Border.all(color: AppColors.colorE3E8EE),
            ),
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                  ),
                ),

                const SizedBox(height: 8),
                Text(
                  "Backup your expense and use Kharcha on all your devices",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.color5B6778,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 35),
                Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),
                CustomTextField(hintText: "Enter your name"),

                const SizedBox(height: 15),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),
                CustomTextField(hintText: "abc@mail.com"),

                const SizedBox(height: 15),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "*******",
                  suffixIcon: isPasswordHidden
                      ? Icons.visibility_off
                      : Icons.remove_red_eye,
                  onSuffixTap: () {
                    onEyeTapped();
                  },
                  isObscure: isPasswordHidden,
                ),

                const SizedBox(height: 15),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),
                CustomTextField(
                  hintText: "*******",
                  suffixIcon: isConfirmPasswordHidden
                      ? Icons.visibility_off
                      : Icons.remove_red_eye,
                  onSuffixTap: () {
                    onConfirmEyeTapped();
                  },
                  isObscure: isConfirmPasswordHidden,
                ),

                const SizedBox(height: 30),
                CustomButton(
                  buttonColor: AppColors.greenColor,
                  textColor: AppColors.pureWhiteColor,
                  buttonText: "Signup",
                  onButtonTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomHomeNavScreen(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 30),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(width: 5),

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
