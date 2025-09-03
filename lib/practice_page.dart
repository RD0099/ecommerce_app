// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  // void initState() {
  //   tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  int currentIndex = 0;

  List<Widget> bottomWidgets = [
    Center(child: Text("Home")),
    Center(child: Text("Message")),
    Center(child: Text("Setting")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: bottomWidgets.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          if (!mounted) return;
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),

      // body: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     child: Column(
      //       children: [
      //         TabBar(
      //             controller: tabController,
      //             unselectedLabelColor: Colors.black,
      //             indicatorColor: Colors.deepOrange,
      //             labelColor: Colors.lightGreen,
      //             unselectedLabelStyle: TextStyle(
      //                 fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
      //             isScrollable: false,
      //             tabs: const [
      //               Tab(
      //                 child: Text(
      //                   "Tab 1",
      //                 ),
      //               ),
      //               Tab(
      //                 child: Text(
      //                   "Tab 2",
      //                 ),
      //               ),
      //               Tab(
      //                 child: Text(
      //                   "Tab 3",
      //                 ),
      //               ),
      //             ]),
      //         Expanded(
      //           flex: 1,
      //           child: TabBarView(controller: tabController, children: [
      //             Container(
      //               height: MediaQuery.of(context).size.height,
      //               width: MediaQuery.of(context).size.width,
      //               color: Colors.blue.shade100,
      //               child: const Center(
      //                 child: Text("Tab 1"),
      //               ),
      //             ),
      //             Container(
      //               height: MediaQuery.of(context).size.height,
      //               width: MediaQuery.of(context).size.width,
      //               color: Colors.blue.shade100,
      //               child: const Center(
      //                 child: Text("Tab 2"),
      //               ),
      //             ),
      //             Container(
      //               height: MediaQuery.of(context).size.height,
      //               width: MediaQuery.of(context).size.width,
      //               color: Colors.blue.shade100,
      //               child: const Center(
      //                 child: Text("Tab 3"),
      //               ),
      //             ),
      //           ]),
      //         )
      //       ],
      //     )),
    );
  }
}
