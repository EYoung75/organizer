import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pageCard.dart';
import './constants.dart';

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
      drawer: HomeDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.perm_identity),
          ),
        ],
        title: Text("Flutter", style: titletext),
      ),
      bottomSheet: Container(
        height: 75,
        color: red,
        width: double.infinity,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: gridPaper,
          ),
        ),
        width: double.infinity,
        child: PageContainer(),
      ),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 8,
      semanticLabel: "App Drawer",
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: gridPaper, fit: BoxFit.cover),
        ),
        child: (ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                color: red,
                child: ListTile(
                  title: Text(
                    "Evan Young",
                    style: titletext,
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Item 1",
                    style: subtitleText,
                  ),
                  Text(
                    "Item 2",
                    style: subtitleText,
                  ),
                  Text(
                    "Item 3",
                    style: subtitleText,
                  ),
                ],
              ),
            )
          ],
        )),
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
        PageCard(
          'Mind Map',
          'images/brain.png',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non diam vel velit ullamcorper finibus vitae vel sapien. Phasellus ac risus aliquam, mollis felis vitae, pulvinar lacus.',
        ),
        PageCard(
          'Mooring',
          'images/anchor.png',
          'Nulla volutpat vulputate elit ut lobortis. Phasellus aliquet nunc interdum porta porttitor. Donec sollicitudin fringilla nibh, eu aliquam neque scelerisque volutpat. Praesent suscipit orci quis ante pharetra malesuada vitae sit amet sapien. ',
        ),
        PageCard(
          'Solidify',
          'images/dragonfly.png',
          'Duis elementum eu neque ut pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam in ex eget congue. Nunc arcu dui, pharetra sit amet lacinia non, ullamcorper eu ante.',
        ),
      ],
    );
  }
}
