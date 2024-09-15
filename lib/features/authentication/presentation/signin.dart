import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marchic/features/authentication/presentation/widgets/CustomButton.dart';
import 'package:marchic/features/authentication/presentation/widgets/phoneField.dart';
import 'package:marchic/features/authentication/presentation/widgets/signupChoices.dart';
import 'package:marchic/themes/tokens.dart';

import '../data/auth_providers.dart';
import 'profilePage.dart';

class SignIn extends ConsumerWidget {
  final TextEditingController _phoneController = TextEditingController();

  SignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUseCase = ref.watch(authUseCaseProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    SizedBox(height: 110.h),
                    Text(
                      "Connexion",
                      style: TextStyle(
                        color: kGray[900],
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      "Bonjour! Heureux de vous revoir!",
                      style: TextStyle(
                        color: kGray[500],
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 103.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Numéro de téléphone",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: kGray[900],
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        CustomInputField(
                          width: double.infinity,
                          height: 45.h,
                          controller: _phoneController,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      text: 'Suivant',
                      onPressed: () {
                        print(_phoneController.text);
                      },
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/Divider.svg"),
                        SizedBox(width: 6.w),
                        Text(
                          "ou",
                          style: TextStyle(
                            color: kGray[500],
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        SvgPicture.asset("assets/Divider.svg"),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    GestureDetector(
                      onTap: () async {
                        final user = await authUseCase.signIn();
                        if (user != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(user: user),
                            ),
                          );
                        } else {
                          // Handle sign-in failure
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Failed to sign in'),
                            ),
                          );
                        }
                      },
                      child: CustomContainer(
                        text: "Continuer avec Google",
                        icon: SvgPicture.asset(
                          "assets/logos/Google.svg",
                          height: 18.h,
                          width: 18.w,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "N'avez-vous pas de compte ?",
                          style: TextStyle(
                            color: kGray[900],
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          "Inscrivez-vous",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
