import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
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
          Image.asset(Appimages.welcome,height: 957.h,width: 638.w,fit: BoxFit.cover,),
          Row(children:[
            Icon(Icons.arrow_back),
            Primarytext(text: 'Welcome', fontWeight:, fontSize: fontSize, color:AppColors.whiteBG)
          ])
        ],
      ),
    );
  }
}