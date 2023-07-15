import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/features/conversations/screens/conversation_screen.dart';
import 'package:medical_consultation/features/dashboard/screens/dashboard_screen.dart';

List<Widget> bottomBarTabs = [
  const Tab(icon: Icon(Icons.home_filled)),
  const Tab(icon: Icon(Icons.post_add_outlined)),
  Tab(
    iconMargin: const EdgeInsets.only(),
    icon: Icon(
      Icons.add_circle_outlined,
      color: AppColors.primary(),
      size: 50,
    ),
  ),
  const Tab(icon: Icon(Icons.message_outlined)),
  const Tab(icon: Icon(Icons.settings)),
];

class BottomNaviagtionBarWidgets extends StatelessWidget {
  final TabController tabController;
  const BottomNaviagtionBarWidgets({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        const DashboardScreen(),
        Container(),
        Container(),
        const ConversationScreen(),
        Container(),
      ],
    );
  }
}
