import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/assets/appIcons/appIcons.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/alreadyAccount.dart';
import 'package:groceryapp/src/controller/components/customButton.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';
class Welcomeview extends StatefulWidget {
  const Welcomeview({super.key});

  @override
  State<Welcomeview> createState() => _WelcomeviewState();
}

class _WelcomeviewState extends State<Welcomeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Appimages.welcome,height: 957.h,
          width: 638.w,fit: BoxFit.cover,),
          Positioned(top: 0,
            left: 0,right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [SizedBox(height: 30.h,),
                  Row(
                      children:[
                    Icon(Icons.arrow_back,color: AppColors.background2,),
                  SizedBox(width: 140.w,),
                    Primarytext(text: 'Welcome', fontWeight:FontWeight.w500, fontSize: 18.sp, color:AppColors.background2)
                  ]),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomLeft,
            child: Container(height: 358.h,
              width: 414.w,decoration:
              BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                  color: AppColors.background2),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Primarytext(text: 'Welcome', fontWeight:FontWeight.w600,
                          fontSize:25.sp , color: AppColors.textBlack),
                    ),
                  ],
                ),
                  Primarytext(text: 'Lorem ipsum dolor sit amet, consetet\n  sadipscing elitr, sed diam nonumy',
                      fontWeight:FontWeight.w500, fontSize: 15, color: AppColors.textgrey),
                  SizedBox(height: 20.h,),
                  Container(width: 380.w,height: 60.h,
                  decoration: BoxDecoration(color: AppColors.whiteBG),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(Appicons.google,height: 16.h,width: 16.58.w,),
                          ),
                          SizedBox(width: 70.w,),
                          Primarytext(text: 'Continue with Google', fontWeight:FontWeight.w500, fontSize: 15, color: AppColors.textBlack)
                        ],
                      ),),
                      SizedBox(height: 20.h,),
                      Custombutton(text: 'Create an account'),
                      SizedBox(height: 10.h,),
                      Alreadyaccount(text1: 'Already have an account?', text2: 'LogIn')
      
              ],),
            ),
          )
        ],
      ),
    );
  }
}