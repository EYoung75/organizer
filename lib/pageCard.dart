import 'package:flutter/material.dart';
import './constants.dart';

class PageCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  PageCard([this.title, this.image, this.description]);

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
                  Text("subtitle lorem ipsum dolar something", style: paragraphGray,),
                  Text(
                    title,
                    style: subtitleText,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Image.asset(
                      image,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      description,
                      style: paragraphBlack,
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
