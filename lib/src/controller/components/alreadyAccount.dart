import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';
class Alreadyaccount extends StatelessWidget {
  final String text1;
  final String text2;
  const Alreadyaccount({super.key,required this.text1,
  required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Primarytext(text: text1, fontWeight: FontWeight.w600, 
      fontSize: 15.sp, color:AppColors.textgrey),
      SizedBox(width: 5.w,),
      Primarytext(text: text2, fontWeight: FontWeight.w600, fontSize: 15, color: AppColors.textBlack),
    ],);
  }
}