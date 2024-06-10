import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'reusable_code.dart';
import 'result.dart';
import 'bmicalculator.dart';
enum Gender { male, female }
enum Age{plus,minus}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  late Gender selectedGenderstate = Gender.male;
  int height = 180;
  int weight = 60;
  int age=10;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenderstate = Gender.male;
                      });
                    },
                    child: contain(
                      colour: selectedGenderstate == Gender.male
                          ? kclickButtonColor
                          : kbodyColor,
                      cardType: content(
                        text: 'MALE',
                        image: FontAwesomeIcons.mars,
                        textmodification: ktextstyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenderstate = Gender.female;
                      });
                    },
                    child: contain(
                      colour: selectedGenderstate == Gender.female
                          ? kclickButtonColor
                          : kbodyColor,
                      cardType: content(
                        text: 'FEMALE',
                        image: FontAwesomeIcons.venus,
                        textmodification: ktextstyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: contain(
                    colour: kbodyColor,
                    cardType: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: ktextstyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: knumberTextStyle,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                'cm',
                                style: ktextstyle,
                              ),

                            ]),
                        SliderTheme(
                          data: SliderThemeData().copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.black,
                            thumbColor:  Colors.red,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayColor: Colors.red[200],
                            overlayShape: RoundSliderOverlayShape(overlayRadius: 40.0)
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 30.0,
                              max: 240.0,

                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: contain(
                    colour: kbodyColor,
                    cardType: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: ktextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(weight.toString(),style: knumberTextStyle,),
                            Text('kg',style: ktextstyle,)
                          ],
                        ),SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                              child:  Icon(FontAwesomeIcons.minus,color:Colors.white),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                              child:  Icon(FontAwesomeIcons.plus,color:Colors.white),)

                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: contain(
                    colour: kbodyColor,
                    cardType: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: ktextstyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(age.toString(),style: knumberTextStyle,),
                            SizedBox(
                              width: 2.0,
                            ),
                            Text('yrs',style: ktextstyle,)
                          ],
                        ),SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              child:  Icon(FontAwesomeIcons.minus,color:Colors.white),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                              child:  Icon(FontAwesomeIcons.plus,color:Colors.white),)

                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Bmicalcualtor bmi=Bmicalcualtor(height: height, weight: weight);
              bmi.calculateBmi();
              Navigator.push(context,MaterialPageRoute(builder: (context){
              return calculation(bmiResult:
                bmi.getValue(),resultText:bmi.calculateBmi() ,resultDescription:bmi.descripitionValue() ,);
            }
            ),
            );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 2.0),
              padding: EdgeInsetsDirectional.only(top: 20.0),
              child: Text(
                "Calculate",
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
        ],
      ),
    );
  }
}