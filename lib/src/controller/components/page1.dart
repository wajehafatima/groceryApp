import 'package:flutter/material.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/circleCheck.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';
class Page1 extends StatelessWidget {

  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Stack(
    children: [
    Image.asset(
    Appimages.splash4,
    fit: BoxFit.cover,
    height: double.infinity,
        width: double.infinity,
    ),
    Column(
    children: [
   
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.only(left:30,top:100),
      child: Primarytext(
      text: ' Welcome to   ',
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: AppColors.textBlack,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset(Appimages.bigcartlogo,width: 127,height: 50,),
    ),
    SizedBox(height: 5),
    Primarytext( 
    text: 'Lorem ipsum dolor sit amet, consetetur\n    sadipscing elitr, sed diam nonumy',
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: AppColors.textgrey,
    ),
    ],
    ),
    SizedBox(height:70,),
    
Spacer(),
    Center(
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
      text: 'Get Started',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
      ),
      ),
      ),
    ),
    SizedBox(height: 20),
    ],
    ),
    ],
    );
  }
}