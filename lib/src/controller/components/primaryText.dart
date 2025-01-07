import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
class Primarytext extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const Primarytext(
      {super.key, required this.text, required this.fontWeight, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontWeight: fontWeight,
          fontSize: fontSize,
          color: color),
    );
  }
}

class Expansion extends StatefulWidget {
  const Expansion({super.key});

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 120.h,

        ),
        ExpansionTile(title: Primarytext(text: 'Reviews (2)',
          fontWeight:FontWeight.w600,
            fontSize: 18.sp, color: AppColors.textBlack,),

          trailing: Icon(Icons.expand_more_rounded,
            color: AppColors.textBlack,),
          children: [
Padding(
  padding: const EdgeInsets.only(left: 20,right: 20),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Primarytext(text: 'Customer reviews',
          fontWeight: FontWeight.w500, fontSize: 15.sp,
          color: AppColors.textBlack),


              SizedBox(height: 5.h,),
              Primarytext(text: 'Best quality',
                  fontWeight:FontWeight.w300, fontSize: 14.sp,
                  color: AppColors.textBlack),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Primarytext(text: 'Quality', fontWeight:
                  FontWeight.w300, fontSize: 12.sp,
                      color: AppColors.textBlack),
                  SizedBox(width: 15.w,),
                  Icon(Icons.star,color: AppColors.textBlack,),
                  Icon(Icons.star,color: AppColors.textBlack,),
                  Icon(Icons.star,color: AppColors.textBlack,),
                  Icon(Icons.star,color: AppColors.textBlack,),
                  Icon(Icons.star,color: AppColors.textgrey,),]),
                  SizedBox(height: 10.h,),
                  Primarytext(text: 'Review by maryam 12/12/24',
                      fontWeight: FontWeight.w300, fontSize:10.sp,
                      color: AppColors.textBlack),
                  SizedBox(height: 5.h,),
                  Divider(),
      SizedBox(height: 5.h,),
      Primarytext(text: 'Love the quality, and service',
          fontWeight:FontWeight.w300, fontSize: 14.sp,
          color: AppColors.textBlack),
      SizedBox(height: 5.h,),
      Row(
          children: [
            Primarytext(text: 'Quality',
                fontWeight: FontWeight.w300, fontSize: 12.sp,
                color: AppColors.textBlack),
            SizedBox(width: 15.w,),
            Icon(Icons.star,color: AppColors.textBlack,),
            Icon(Icons.star,color: AppColors.textBlack,),
            Icon(Icons.star,color: AppColors.textBlack,),
            Icon(Icons.star,color: AppColors.textBlack,),
            Icon(Icons.star,color: AppColors.textBlack,),]),
      SizedBox(height: 10.h,),
      Primarytext(text: 'Review by Zaheer 04/11/24',
          fontWeight: FontWeight.w300, fontSize:10.sp,
          color: AppColors.textBlack),
      SizedBox(height: 5.h,),

      SizedBox(height: 5.h,),

                 ]),
),
              ],
            )
          ],
        ),


    );
  }
}
class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime? selecteddDate;
  void datePicker(
      BuildContext context,)async
  {
    DateTime? pickedDate= await showDatePicker(context: context, firstDate: DateTime(1900),
        lastDate: DateTime(2099));
    if(pickedDate!=null);
    setState(() {
   selecteddDate=pickedDate;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextButton(onPressed:(){
        datePicker(context);
      } , child: Text(selecteddDate!=null? selecteddDate.toString():
          'Select date')),),
    );
  }
}

