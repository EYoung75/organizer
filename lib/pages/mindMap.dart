import "package:flutter/material.dart";
import "../constants.dart";

class MindMapScreen extends StatelessWidget {
  final String title;
  MindMapScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: red,
        title: Text(title, style: titletext),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: gridPaper, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
