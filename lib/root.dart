import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Profile_View.dart';
import 'package:food_hub/Features/Cart/Presentation/Views/Cart_view.dart';
import 'package:food_hub/Features/Home/Presentation/Views/home_view.dart';
import 'package:food_hub/Features/OrderHistory/Presentation/views/oreder_history_view.dart';

class root extends StatefulWidget {
  const root({super.key});

  @override
  State<root> createState() => _rootState();
}

class _rootState extends State<root> {
  late PageController controller;
  late List<Widget> Views;
  int currentpage = 0;
  @override
  void initState() {
    Views = [Homeview(), CartView(), OrederHistoryView(), ProfileView()];
    controller = PageController(initialPage: currentpage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: PageView(
          controller: controller,
          children: Views,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.Primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: currentpage,
            onTap: (index) {
              setState(() {
                currentpage = index;
              });
              controller.jumpToPage(currentpage);
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(CupertinoIcons.cart),
              ),
              BottomNavigationBarItem(
                label: 'Order History',
                icon: Icon(Icons.local_restaurant_rounded),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(CupertinoIcons.profile_circled),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
