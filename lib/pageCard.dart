import 'package:flutter/material.dart';
import './constants.dart';
import './pages/mindMap.dart';

class PageCard extends StatelessWidget {
  // final String title;
  // final String image;
  // final String description;

  // PageCard([this.title, this.image, this.description]);

  final itemData;

  PageCard(this.itemData);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MindMapScreen(itemData['title']);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black,
                    spreadRadius: 1,
                  ),
                ],
                border: Border.all(
                  color: red,
                  width: 1,
                ),
                color: bone,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "subtitle lorem ipsum dolar something",
                      style: paragraphGray,
                    ),
                    Text(
                      itemData['title'],
                      style: subtitleText,
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 100,
                      child: Image.asset(
                        itemData['image'],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Text(
                        itemData['description'],
                        style: paragraphBlack,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
