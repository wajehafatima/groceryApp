import 'package:flutter/material.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';
class Custombutton extends StatelessWidget {
    final String text;
  const Custombutton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      height: 60,
      width: 380,
      decoration: BoxDecoration(
      gradient: LinearGradient(
      colors: [
      AppColors.primary,
      AppColors.primarydark,
      ],
      ),
      ),
      child: Center(
      child: Primarytext(
      text: text,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
      ),
      ),
      ),
    );
  }
}