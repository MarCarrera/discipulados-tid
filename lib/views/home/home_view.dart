import 'package:discipulos_tid/views/students/students_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'components/card_model.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Constants.getScreenHeight(context);
    double screenWidth = Constants.getScreenWidth(context);
   double fontSize = Constants.getFontSize(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Taller de Jovenes 2', 
        style: TextStyle(fontSize: fontSize * 1.04),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero, // Elimina el padding por defecto del botón
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentsView(),
            ),
          );
        },
        child: Text(
          'Nuevo reporte',
          style: TextStyle(fontSize: fontSize * 1.04),
        ),
      ),
    ],
  ),
),


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

