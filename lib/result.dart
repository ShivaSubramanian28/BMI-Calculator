import 'package:bmicalculator/main.dart';
import 'package:bmicalculator/reusable_code.dart';
import 'package:flutter/material.dart';
import 'inputdata.dart';
import 'constants.dart';

class calculation extends StatelessWidget {
calculation({required this.bmiResult,required this.resultText,required this.resultDescription});
String bmiResult;
String resultText;
String resultDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    child: Text(
                      'Your Score',
                      style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            Expanded(
              flex: 7,
                child:contain(colour: kclickButtonColor, cardType: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(bmiResult,style: kresultPage),
                    Text(resultText,style: kresultValue),
                    Text(resultDescription,style: kdescriptionValue,textAlign: TextAlign.center,),
                  ],
                ))
              ),
        Expanded(
          child: GestureDetector(
            onTap: (

                ){Navigator.pop(context);},
            child: Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 2.0),
              padding: EdgeInsetsDirectional.only(top: 20.0),
              child: Text(
                "Re-Calculate",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              width: double.infinity,
              height: kbottomHeightValue,
              decoration: BoxDecoration(
                color: kbottomColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ],
           ),
    );
  }
}
