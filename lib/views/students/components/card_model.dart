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
        height: screenHeight * 0.12,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Constants.cardColor,
          borderRadius: BorderRadius.circular(24),
        
          
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Marisol', style: TextStyle(color: Colors.black, fontSize: fontSize * 1 ),),
                Text('Trujillo Hernández', style: TextStyle(color: Colors.black, fontSize: fontSize * 1 ),),
              ],),
              Text('Activo',style: TextStyle(color: Colors.black, fontSize: fontSize * 1.2)),
            ],
          ),
        ),
      ),
    );
  }
}