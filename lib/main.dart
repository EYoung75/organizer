import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: TextTheme(
          headline1: GoogleFonts.charm(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
            shadows: [
              Shadow(
                  color: Color.fromRGBO(0, 0, 0, .6),
                  blurRadius: 10,
                  offset: Offset.fromDirection(10.0))
            ],
          ),
          bodyText2: GoogleFonts.charm(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.black,
          ),
          bodyText1: GoogleFonts.oswald(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
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
          image: DecorationImage(
            image: AssetImage("/images/grid.png"),
            fit: BoxFit.cover
          ),
        ),
        child: (ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                color: Color.fromRGBO(186, 24, 32, 1),
                child: ListTile(
                  title: Text(
                    "Evan Young",
                    style: Theme.of(context).textTheme.title.copyWith(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1, 3.0),
                          blurRadius: 7.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(
                      0,
                      1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
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
        backgroundColor: Color.fromRGBO(186, 24, 32, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.perm_identity),
          ),
        ],
        title: Text(
          "Flutter",
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.white, fontSize: 28),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/grid.png",
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black,
                  spreadRadius: 10,
                ),
              ],
              color: Color.fromRGBO(233, 225, 218, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mind Map",
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Image.asset(
                      "images/brain.png",
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eget porta odio, sit amet vestibulum sem. Aliquam pellentesque arcu sit amet magna ornare, vitae pellentesque nibh scelerisque. Integer rutrum, nisl sit amet eleifend placerat.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black,
                  spreadRadius: 10,
                ),
              ],
              color: Color.fromRGBO(233, 225, 218, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mooring",
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Image.asset(
                      "images/anchor.png",
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      "Curabitur sit amet vehicula tellus. Duis congue finibus neque sit amet suscipit. Maecenas eu odio semper, pretium lacus sed, ultricies nulla",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black,
                  spreadRadius: 10,
                ),
              ],
              color: Color.fromRGBO(233, 225, 218, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Solidify",
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Image.asset(
                      "images/dragonfly.png",
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      "In tempor tellus et magna ultrices fermentum ut vel risus. Proin ultrices porttitor eros vel tristique. Vivamus luctus tellus odio, vitae pellentesque libero fermentum accumsan.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
