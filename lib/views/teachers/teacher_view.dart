import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'components/card_model.dart';




class TeacherView extends StatelessWidget {
  const TeacherView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Constants.getScreenHeight(context);
    double screenWidth = Constants.getScreenWidth(context);
   

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                 // Text('Reportes de Discipulados', style: TextStyle(fontSize: fontSize * 1.04),),
                  CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                  CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                  CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                  CardModel(screenHeight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            ),
          )
      );
  }
}

