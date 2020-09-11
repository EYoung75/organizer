import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizer',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.perm_identity),
          ),
        ],
        title: Text(
          "Organizer",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/dotted-grid.jpg",
            ),
          ),
        ),
        width: double.infinity,
        child: PageContainer(),
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(initialPage: 0),
      children: [
        PageOne(),
        PageTwo(),
        PageThree(),
      ],
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                spreadRadius: 0,
              ),
            ], color: Colors.red, borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                spreadRadius: 0,
              ),
            ], color: Colors.red, borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black,
                spreadRadius: 0,
              ),
            ], color: Colors.red, borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
