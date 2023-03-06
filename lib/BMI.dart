import 'dart:math';
import 'package:flutter/material.dart';

import 'BMI Result.dart';
class BmiCalcltor extends StatefulWidget
{
  @override
  _BmiCalcltorState createState() => _BmiCalcltorState();
}

class _BmiCalcltorState extends State<BmiCalcltor> {
  bool ismale = true ;
  double slider = 120.0 ;
  int weight = 60 ;
  int Age = 20 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b0d22),
        title: const Text(
          'BMI CALCULATOR' ,
        ),
        centerTitle: true,
      ),
      body:Container(
        color: Color(0xff0b0d22),
        child: Column(
          children:
          [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            ismale = true ;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: ismale ? Colors.pink : Color(0xff1d2033),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            const [
                              Icon(Icons.male_sharp,size: 60,color: Colors.white,),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 30.0 ,
                                  color: Colors.white,

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            ismale = false ;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: ismale ? Color(0xff1d2033) : Colors.pink,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            const [
                              Icon(Icons.female_sharp,size: 60,color: Colors.white,),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 30.0 ,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xff1d2033),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      const Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 30.0 ,
                          fontWeight: FontWeight.w900 ,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${slider.round()}' ,
                            style: const TextStyle(
                              fontSize: 40.0 ,
                              fontWeight: FontWeight.w700 ,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          const Text(
                            'cm' ,
                            style: TextStyle(
                              fontSize: 20.0 ,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor : Colors.white30 ,
                        activeColor: Colors.white,
                        thumbColor: Colors.pinkAccent,
                        value: slider,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value)
                        {
                          setState(() {
                            slider = value ;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xff1d2033), ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'weight',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$weight' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                } ,
                                  heroTag:'weight--',
                                  backgroundColor: Colors.pink[400],
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove ,
                                  ),),
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                } ,
                                  heroTag:'weight+',
                                  backgroundColor: Colors.pink[400],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,

                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xff1d2033), ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 30.0 ,
                                fontWeight: FontWeight.w900 ,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$Age' ,
                              style: const TextStyle(
                                fontSize: 40.0 ,
                                fontWeight: FontWeight.w700 ,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age-- ;
                                  });
                                } ,
                                  heroTag: 'Age_',
                                  backgroundColor: Colors.pink[400],
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove ,
                                  ),),
                                FloatingActionButton(onPressed: ()
                                {
                                  setState(() {
                                    Age++;
                                  });
                                } ,
                                  heroTag: 'Age+',
                                  backgroundColor: Colors.pink[400],
                                  mini: true,
                                  child: const Icon(
                                    Icons.add ,
                                  ),),
                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.pinkAccent
              ),
              width: double.infinity,
              height: 50.0 ,
              child: MaterialButton(onPressed: ()
              {
                double result = weight /pow(slider/100, 2);
                print(result.round()) ;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bmi_Result(
                  ismale: ismale,
                  Age: Age,
                  result:result.round(),
                )),
                );
              },
                child: const Text(
                  'Bmi Calculator' ,
                  style: TextStyle(
                    fontSize: 20.0 ,

                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),

    );
  }
}
