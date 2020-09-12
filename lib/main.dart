import 'package:flutter/gestures.dart';
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
      // drawer: HomeDrawer(),
      appBar: AppBar(
        elevation: 20,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.perm_identity),
          ),
        ],
        title: Text("Menu", style: titletext),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: red,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, -2),
              spreadRadius: 2,
              blurRadius: 50,
            ),
          ],
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(""),
        ),
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
            // image: DecorationImage(image: gridPaper, fit: BoxFit.cover),
            color: bone),
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
  final List items = [
    {
      'title': 'Mind Map',
      'image': 'images/brain.png',
      'description':
          'Duis elementum eu neque ut pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam in ex eget congue. Nunc arcu dui, pharetra sit amet lacinia non, ullamcorper eu ante.',
    },
    {
      'title': 'Mooring',
      'image': 'images/anchor.png',
      'description':
          'Nulla volutpat vulputate elit ut lobortis. Phasellus aliquet nunc interdum porta porttitor. Donec sollicitudin fringilla nibh, eu aliquam neque scelerisque volutpat. Praesent suscipit orci quis ante pharetra malesuada vitae sit amet sapien. ',
    },
    {
      'title': 'Solidify',
      'image': 'images/dragonfly.png',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non diam vel velit ullamcorper finibus vitae vel sapien. Phasellus ac risus aliquam, mollis felis vitae, pulvinar lacus.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemBuilder: (ctx, i) {
          return PageCard(
            items[i],
          );
        },
        itemCount: items.length,
      ),
      // child: PageView(
      //   onPageChanged: setPage(),
      //   controller: PageController(
      //     initialPage: 0,
      //   ),
      //   children: [
      //     PageCard(
      // 'Mind Map',
      // 'images/brain.png',
      // 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non diam vel velit ullamcorper finibus vitae vel sapien. Phasellus ac risus aliquam, mollis felis vitae, pulvinar lacus.',
      //     ),
      //     PageCard(
      // 'Mooring',
      // 'images/anchor.png',
      // 'Nulla volutpat vulputate elit ut lobortis. Phasellus aliquet nunc interdum porta porttitor. Donec sollicitudin fringilla nibh, eu aliquam neque scelerisque volutpat. Praesent suscipit orci quis ante pharetra malesuada vitae sit amet sapien. ',
      //     ),
      //     PageCard(
      //       'Solidify',
      //       'images/dragonfly.png',
      // 'Duis elementum eu neque ut pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In aliquam in ex eget congue. Nunc arcu dui, pharetra sit amet lacinia non, ullamcorper eu ante.',
      //     ),
      //   ],
      // ),
    );
  }
}
