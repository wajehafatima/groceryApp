import 'package:flutter/material.dart';

import '../assets/colors/AppColors.dart';
class Customtextform extends StatelessWidget {
  final String hintText;
  final Widget icon;
  final Widget? suffixIcon;
  const Customtextform({super.key,required this.hintText, required this.icon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 60,right: 60,),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText:hintText,
            suffixIcon: suffixIcon,
            fillColor: AppColors.whiteBG,
            filled: true,
            border: InputBorder.none

        ),
      ),
    );
  }
}
