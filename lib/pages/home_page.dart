import 'package:damaz/components/my_current_location.dart';
import 'package:damaz/components/my_description_box.dart';
import 'package:damaz/components/my_drawer.dart';
import 'package:damaz/components/my_sliver_app_bar.dart';
import 'package:damaz/components/my_tab_bar.dart';
import 'package:damaz/models/food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  // tab controller
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const MyCurrentLocation(),

                // description box
                const MyDescriptionBox(),

              ],
            ),
            ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("first_tab_items"),
            ),

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("second_tab_items"),
            ),

            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third_tab_items"),
            ),

             ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third_tab_items"),
            ),

             ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Text("third_tab_items"),
            ),
          ])),
    );
  }
}