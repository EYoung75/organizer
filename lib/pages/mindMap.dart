import "package:flutter/material.dart";
import "../constants.dart";

class MindMapScreen extends StatelessWidget {
  final String title;
  MindMapScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: red,
          elevation: 8,
          child: Icon(Icons.edit)),
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: red,
        title: Text(title, style: titletext),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: gridPaper, fit: BoxFit.cover),
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Text(
                  '"Your dreams don\'t work unless you do"',
                  style:
                      paragraphGray.copyWith(fontSize: 26.0, color: Colors.black),
                ),
                Text(
                  "- John C. Maxwell",
                  style: subtitleText.copyWith(
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.right,
                ),
                ListEntry(),
                ListEntry(),
                ListEntry(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black,
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(
            'images/paper.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.crop_din,
        ),
        title: Text(
          "Entry Title",
          style: paragraphBlack.copyWith(
            fontSize: 22.0,
          ),
        ),
        subtitle: Text("Entry Date", style: paragraphGray),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
