import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/circleCheck.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';

class Pages extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const Pages({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Primarytext(
                    text: title,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.sp,
                    color: AppColors.textBlack,
                  ),
                ),
                SizedBox(height: 5.h),
                Primarytext(
                  text: subtitle,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColors.textgrey,
                ),
              ],
            ),
            
           Row
           ( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
           CircleAvatar(radius: 4.r,),
            CircleAvatar(radius: 4.r,),
             CircleAvatar(radius: 4.r,),
              CircleAvatar(radius: 4.r,),
           ]),
            Spacer(),
            Center(
              child: Container(
                height: 60.h,
                width: 380.w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primarydark,
                    ],
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: onButtonPressed,
                    child: Primarytext(
                      text: buttonText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ],
    );
  }
}

