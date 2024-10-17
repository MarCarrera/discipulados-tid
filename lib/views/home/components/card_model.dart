import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

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
     double fontSize = Constants.getFontSize(context);
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
        child: Padding(
          padding: const EdgeInsets.only(right: 25, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Reporte', style: TextStyle(color: Colors.black, fontSize: fontSize * 1.4 ),),
              Text('Del 01 al 07',style: TextStyle(color: Colors.black, fontSize: fontSize * 1.2)),
              Text('de Octubre',style: TextStyle(color: Colors.black, fontSize: fontSize * 1.2))
            ],
          ),
        ),
      ),
    );
  }
}