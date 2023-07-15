import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';
import 'package:medical_consultation/constants/themes.dart';
import 'package:medical_consultation/features/shared/widgets/bottom_naviagton_bar.dart';

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
        tabs: bottomBarTabs,
      ),
      body: BottomNaviagtionBarWidgets(
        tabController: _tabController,
      ),
    );
  }
}
