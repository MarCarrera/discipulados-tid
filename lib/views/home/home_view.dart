import 'package:flutter/material.dart';

import '../../utils/constants.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Constants.getScreenHeight(context);
    double screenWidth = Constants.getScreenWidth(context);
    double fontSize = Constants.getFontSize(context);

    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Reportes de Discipulados', style: TextStyle(fontSize: fontSize * 1.04),),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
              ],
            ),
          )
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
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover  
              )
          
        ),
      ),
    );
  }
}