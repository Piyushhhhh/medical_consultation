import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/themes.dart';
import 'package:medical_consultation/dashboard/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themedata,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      bottomNavigationBar: TabBar(
        padding: const EdgeInsets.only(bottom: 30),
        indicatorColor: Colors.transparent,
        controller: _tabController,
        tabs: [
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
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const DashboardScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
