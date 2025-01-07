// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:groceryapp/src/controller/components/customTextForm.dart';
//
// import '../../../controller/assets/appIcons/appIcons.dart';
// import '../../../controller/assets/appImages/appImages.dart';
// import '../../../controller/assets/colors/AppColors.dart';
// import '../../../controller/components/alreadyAccount.dart';
// import '../../../controller/components/customButton.dart';
// import '../../../controller/components/primaryText.dart';
// import '../../../controller/components/welcomeTitle.dart';
// class Loginview extends StatefulWidget {
//   const Loginview({super.key});
//
//   @override
//   State<Loginview> createState() => _LoginviewState();
// }
//
// class _LoginviewState extends State<Loginview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(Appimages.login,height: 957.h,
//             width: 638.w,fit: BoxFit.cover,),
//           Positioned(top: 0,
//               left: 0,right: 0,
//               child:Welcometitle()
//           ),
//           Align(alignment: Alignment.bottomLeft,
//             child: Container(height: 453.h,
//               width: 414.w,decoration:
//               BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
//                   color: AppColors.background2),
//               child: Column(mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Column(mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 40),
//                         child: Primarytext(text: 'Welcome Back!', fontWeight:FontWeight.w600,
//                             fontSize:25.sp , color: AppColors.textBlack),
//                       ),
//                     ],
//                   ),
//                   Primarytext(text: 'Sign in to your account',
//                       fontWeight:FontWeight.w500, fontSize: 15, color: AppColors.textgrey),
//                   SizedBox(height: 20.h,),
//                  Customtextform(hintText: '   Email Address', icon: Icon(Icons.mail_outline), ),
//                   SizedBox(height: 10.h,),
//                   Customtextform(hintText: '  Enter Password', icon:Icon(Icons.lock_outline),suffixIcon: Icon(Icons.visibility_outlined),),
// SizedBox(height: 10.h,),
//                   Row(children: [Icon(Icons.check_box_outline_blank),
//                   SizedBox(width: 5.w,),
//                   Primarytext(text: 'Remember me', fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.textgrey),
//                   TextButton(onPressed: (){}, child:Primarytext(text: 'forget Password', fontWeight: FontWeight.w400, fontSize: 15, color: AppColors.linkblue))],),
//                   SizedBox(height: 20.h,),
//                   Custombutton(text: 'Log In'),
//                   SizedBox(height: 10.h,),
//                   Alreadyaccount(text1: 'Don\'t have an account', text2: 'sign up')
//
//                 ],),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomAndTopNavigation(),
    );
  }
}

class BottomAndTopNavigation extends StatefulWidget {
  @override
  _BottomAndTopNavigationState createState() => _BottomAndTopNavigationState();
}

class _BottomAndTopNavigationState extends State<BottomAndTopNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedBottomIndex = 0; // Bottom navigation selected index
  late TabController _tabController; // Controller for top tabs

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3 tabs for Home
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top and Bottom Navigation'),
        // Show TabBar only on Home Screen (index 0)
        bottom: _selectedBottomIndex == 0
            ? TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.dashboard), text: 'Tab 1'),
            Tab(icon: Icon(Icons.star), text: 'Tab 2'),
            Tab(icon: Icon(Icons.settings), text: 'Tab 3'),
          ],
        )
            : null,
      ),
      // Conditional Body Based on Selected Bottom Tab
      body: _selectedBottomIndex == 0
          ? TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Content for Tab 1')),
          Center(child: Text('Content for Tab 2')),
          Center(child: Text('Content for Tab 3')),
        ],
      )
          : Center(
          child: Text(
              'This is Screen ${_selectedBottomIndex == 1 ? "Search" : "Profile"}')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedBottomIndex,
        selectedItemColor: Colors.purple,
        onTap: (index) {
          setState(() {
            _selectedBottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}





