import 'package:flutter/material.dart';
import 'package:groceryapp/src/controller/assets/colors/AppColors.dart';
class Circlecheck extends StatefulWidget {
  const Circlecheck({super.key});

  @override
  State<Circlecheck> createState() => _CirclecheckState();
}

class _CirclecheckState extends State<Circlecheck> {
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    _currentPage==0?Icon(Icons.circle,size:10,color:AppColors.primarydark,):Icon(Icons.circle_outlined),
     _currentPage==1?Icon(Icons.circle,size:10,color:AppColors.primarydark,):Icon(Icons.circle_outlined),
      _currentPage==2?Icon(Icons.circle,size:10,color:AppColors.primarydark,):Icon(Icons.circle_outlined),
       _currentPage==3?Icon(Icons.circle,size:10,color:AppColors.primarydark,):Icon(Icons.circle_outlined)
       ]);
  }
}