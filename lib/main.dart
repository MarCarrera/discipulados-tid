import 'package:flutter/material.dart';

import 'utils/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Constants.getScreenHeight(context);
    double screenWidth = Constants.getScreenWidth(context);
    double fontSize = Constants.getFontSize(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discipulos TID',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buenos dias Daniela'),
          actions: [
            Icon(Icons.more_vert)
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class CardModel extends StatelessWidget {
  const CardModel({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight * 0.22,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Constants.cardColor,
          borderRadius: BorderRadius.circular(24)
          
        ),
        child: Text('DATA'),
      ),
    );
  }
}