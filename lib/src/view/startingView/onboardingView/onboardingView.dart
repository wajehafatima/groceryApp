import 'package:flutter/material.dart';
import 'package:groceryapp/src/controller/assets/appImages/appImages.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
import 'package:groceryapp/src/controller/components/page1.dart';
import 'package:groceryapp/src/controller/components/pages.dart';
import 'package:groceryapp/src/controller/components/primaryText.dart';
class Onboardingview extends StatefulWidget {
  const Onboardingview({super.key});

  @override
  State<Onboardingview> createState() => _OnboardingviewState();
}

class _OnboardingviewState extends State<Onboardingview> {
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.whiteBG,
body: 
PageView(children: [
  Page1(),
  Pages(image: Appimages.splash2, title: '  Buy Quality\nDairy Products', subtitle: 'Lorem ipsum dolor sit amet, consetetur\n   sadipscing elitr, sed diam nonumy', buttonText: 'Get Started', onButtonPressed:(){}),
Pages(image: Appimages.splash3, title: '   Buy Premium\n    Quality Fruits', subtitle: 'Lorem ipsum dolor sit amet, consetetur\n   sadipscing elitr, sed diam nonumy',
 buttonText: 'Get Started', onButtonPressed: (){}),
 Pages(image: Appimages.splash4, title: '  Get Discounts\n On All Products', subtitle:'Lorem ipsum dolor sit amet, consetetur\n     sadipscing elitr, sed diam nonumy', buttonText: 'Get Started', onButtonPressed:(){}),
 ],
 onPageChanged: (int page){
setState(() {
  _currentPage=page;
});
 },
  )

); }

  



}

