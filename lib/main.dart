import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: ("HOME"),
      icon: Icon(Icons.home),
    ),
    Tab(
      text: ("BOOKS"),
      icon: Icon(Icons.menu_book),
    ),
    Tab(
      text: ("SETTING"),
      icon: Icon(Icons.settings),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Widget"),
            centerTitle: true,
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.lightBlueAccent,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                // indicatorColor: Colors.black,
                // indicatorWeight: 3,
                // indicatorPadding: EdgeInsets.all(4),
                // indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.blueAccent,
                  // borderRadius: BorderRadius.circular(10),
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
              child: Text(
                "Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
              Center(
                child: Text(
                  "Books",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Setting",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
