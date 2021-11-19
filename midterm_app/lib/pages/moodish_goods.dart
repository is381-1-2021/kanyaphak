import 'package:flutter/material.dart';

class moodish_goods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MOODISH GOODS'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.cloud)),
              Tab(
                icon: Icon(Icons.shower),
              ),
              Tab(
                icon: Icon(Icons.wb_sunny),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('Cloudy'),
          ),
          Center(
            child: Text('Rainy'),
          ),
          Center(
            child: Text('Sunny'),
          ),
        ]),
      ),
    );
  }
}
