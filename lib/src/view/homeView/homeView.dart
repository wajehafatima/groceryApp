import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  List images = [
    Appimages.home1,
    Appimages.home1,
    Appimages.home1,
    Appimages.home1,
    Appimages.home1,
  ];
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBG,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search keywords',
                suffix: Icon(
                  Icons.filter_alt,
                  color: AppColors.textgrey,
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.whiteBG),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.whiteBG),
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 300.h,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Stack(children: [
                     Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150,left: 60),
                      child: Primarytext(text: '20\% off on your \n First purchase', fontWeight: FontWeight.bold, fontSize: 25.sp, color: AppColors.textBlack),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,top: 260),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        currentImage==0?Icon(Icons.circle,size: 14,color: AppColors.primarydark,):Icon(Icons.circle,size: 10,color: AppColors.whiteBG,),
                       SizedBox(width: 3.h,),
                        currentImage==1?Icon(Icons.circle,size: 14,color: AppColors.primarydark,):Icon(Icons.circle,size: 10,color: AppColors.whiteBG,),
                          SizedBox(width: 3.h,),

                        currentImage==2?Icon(Icons.circle,size: 14,color: AppColors.primarydark,):Icon(Icons.circle,size: 10,color: AppColors.whiteBG,),
                          SizedBox(width: 3.h,),

                        currentImage==3?Icon(Icons.circle,size: 14,color: AppColors.primarydark,):Icon(Icons.circle,size: 10,color: AppColors.whiteBG,),
                          SizedBox(width: 3.h,),
                        currentImage==4?Icon(Icons.circle,size: 14,color: AppColors.primarydark,):Icon(Icons.circle,size: 10,color: AppColors.whiteBG,),
                      ],),
                    )
                  ]);
                },
                itemCount: images.length,
                
                controller: PageController(viewportFraction: 1.0),
                onPageChanged: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
