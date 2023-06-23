import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Go to Page 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
            ),
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageTo()));
            },
            child: Text("go to page 2"),
          )),
        ],
      ),
    );
  }
}

class PageTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("page1"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page1()));
            },
            child: Text("go to page 1"),
          ),
          Text("hi"),
        ],
      )),
    );
  }
}
