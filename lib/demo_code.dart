import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Widget"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.cloud_circle)),
              Tab(icon: Icon(Icons.beach_access_sharp)),
              Tab(icon: Icon(Icons.brightness_5_sharp)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Text("It's cloudy here"),
            Text("It's rainy here"),
            Text("i"),
          ],
        ),
      ),
    );
  }
}
