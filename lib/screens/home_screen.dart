import 'package:adahy/page_tabs/store_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adahy/shared_ui/navigation_drawer.dart';
import 'package:adahy/page_tabs/explore_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final title = 'Grid List';
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
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
        title: Text(
          "تصفح",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontFamily: "Changa",
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "تصفح الأضاحي",
            ),
            Tab(
              text: "تصفح المتاجر",
            ),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          ExplorePage(),
          StorePage(),
        ],
      ),
    );
  }
}
