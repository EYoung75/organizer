import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organizer/pages/journalScreen.dart';
import './pageCard.dart';
import './constants.dart';
import "./pages/journalScreen.dart";
import './pages/trackerScreen.dart';
import './pages/organizerScreen.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

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
      initialRoute: "/",
      routes: {
        '/journal': (ctx) => JournalScreen(),
        '/tracker': (ctx) => TrackerScreen(),
        '/organizer': (ctx) => OrganizerScreen(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String affirmation;

  Future getQuote() async {
    dynamic response = await http
        .get("https://www.affirmations.dev/")
        .then((res) => json.decode(res.body));
    setState(() {
      affirmation = response["affirmation"];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getQuote();
  }

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
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Text(
            affirmation == null ? "" : '"' + affirmation + '"',
            style: paragraphBlack.copyWith(color: Colors.white, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
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
          color: bone,
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
  final List items = [
    {
      'title': 'Journal',
      'subtitle': 'Document your inner musings',
      'image': 'images/brain.png',
      'description':
          'Chronicle your daily thoughts for future reconciliation here.',
      'route': '/journal'
    },
    {
      'title': 'Goal Tracker',
      'subtitle': 'Better yourself',
      'image': 'images/anchor.png',
      'description':
          'Log progress towards your goals, both short and long term',
      'route': '/tracker'
    },
    {
      'title': 'Organizer',
      'subtitle': 'Reminders for the important stuff',
      'image': 'images/dragonfly.png',
      'description': "To-do's and lists tracker to keep you organized",
      'route': 'organizer'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        // pageSnapping: false,
        itemBuilder: (ctx, i) {
          return PageCard(
            items[i],
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
