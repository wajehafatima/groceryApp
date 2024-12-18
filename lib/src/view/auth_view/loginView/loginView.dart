import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/assets/appIcons/appIcons.dart';
import '../../../controller/assets/appImages/appImages.dart';
import '../../../controller/assets/colors/AppColors.dart';
import '../../../controller/components/alreadyAccount.dart';
import '../../../controller/components/customButton.dart';
import '../../../controller/components/primaryText.dart';
import '../../../controller/components/welcomeTitle.dart';
class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Appimages.login,height: 957.h,
            width: 638.w,fit: BoxFit.cover,),
          Positioned(top: 0,
              left: 0,right: 0,
              child:Welcometitle()
          ),
          Align(alignment: Alignment.bottomLeft,
            child: Container(height: 453.h,
              width: 414.w,decoration:
              BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                  color: AppColors.background2),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Primarytext(text: 'Welcome Back!', fontWeight:FontWeight.w600,
                            fontSize:25.sp , color: AppColors.textBlack),
                      ),
                    ],
                  ),
                  Primarytext(text: 'Sign in to your account',
                      fontWeight:FontWeight.w500, fontSize: 15, color: AppColors.textgrey),
                  SizedBox(height: 20.h,),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline,color: AppColors.textgrey,),
                      hintText:'Enter Email',
                      fillColor: AppColors.whiteBG,
                      filled: true,

                    ),
                  ),

                  SizedBox(height: 20.h,),
                  Custombutton(text: 'Log In'),
                  SizedBox(height: 10.h,),
                  Alreadyaccount(text1: 'Don\' have an account', text2: 'sign up')

                ],),
            ),
          )
        ],
      ),
    );
  }
}
