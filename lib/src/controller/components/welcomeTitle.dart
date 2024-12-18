import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';

import '../assets/colors/AppColors.dart';
class Welcometitle extends StatelessWidget {
  const Welcometitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
    );
  }
}
