import 'package:flutter/material.dart';
import 'BMI.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalcltor(),
    );
  }
}


// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xff0b0d22),
//           centerTitle: true,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'BMI Calculator',
//                   style: GoogleFonts.belleza(
//                     color: Colors.white,
//                     fontSize: 26,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 2),
//           child: main_page(),
//         ),
//       ),
//     );
//   }
// }
//
// class main_page extends StatefulWidget {
//   const main_page({Key? key}) : super(key: key);
//
//   @override
//   State<main_page> createState() => _main_pageState();
// }
//
// class _main_pageState extends State<main_page> {
//   bool pressed = false;
//   String strText1 = 'Female';
//   String strText2 = 'Male';
//   int height = 160;
//   double _sliderValue = 150;
//   Color _iconColor = Colors.white;
//   bool isFavourite = false;
//   int currentindex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Expanded(
//                       child: Padding(
//                           padding: EdgeInsets.all(2.0),
//                           child: Container(
//                             color: Color(0xff1d2033),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 IconButton(
//                                   icon: Icon(
//                                     Icons.male_sharp,
//                                     size: 60,
//                                     color: isFavourite
//                                         ? Colors.white
//                                         : const Color.fromARGB(255, 114, 113, 113),
//                                   ),
//                                   onPressed: () {
//                                     setState(() {
//                                       isFavourite = !isFavourite;
//                                     });
//                                   },
//                                 ),
//                                 SizedBox(height: 20, width: 10,),
//                                 const Text("Male",style: TextStyle(color: Colors.white,fontSize: 30,),),
//                               ],
//                             ),
//                           ))),
//                   Expanded(
//                       child: Padding(
//                           padding: EdgeInsets.all(2.0),
//                           child: Container(
//                             color: Color(0xff1d2033),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 IconButton(
//                                   icon: Icon(
//                                     Icons.female_sharp,
//                                     size: 60,
//                                     color: isFavourite
//                                         ? Colors.white
//                                         : const Color.fromARGB(255, 114, 113, 113),
//                                   ),
//                                   onPressed: () {
//                                     setState(() {
//                                       isFavourite = !isFavourite;
//                                     });
//                                   },
//                                 ),
//                                 SizedBox(height: 20, width: 10,),
//                                 const Text("Female",style: TextStyle(color: Colors.white,fontSize: 30,),),
//                               ],
//                             ),
//                           ))),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(100.0), // Add padding for spacing
//               decoration: BoxDecoration(
//                 color: Color(0xff1d2033), // Set background color
//                 border: Border.all(color: Colors.grey), // Add border
//                 borderRadius: BorderRadius.circular(10.0), // Add border radius
//               ),
//               child: Column(
//                 mainAxisAlignment:
//                     MainAxisAlignment.center, // Center text vertically
//                 // crossAxisAlignment: CrossAxisAlignment.center, // Center text horizontally
//                 children: [
//                   Text(
//                     'HEIGHT',
//                     style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(height: 10.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         height.toString(),
//                         style: TextStyle(
//                             fontSize: 40.0,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                       Text(
//                         'cm',
//                         style: TextStyle(fontSize: 16.0, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.0),
//                   Slider(
//                     min: 120,
//                       max: 220,
//                       label: _sliderValue.toString(),
//                       inactiveColor: Colors.white60,
//                       activeColor: Colors.pink,
//                       value: height.toDouble(),
//                       onChanged: (double newValue) {
//                         setState(() {
//                           newValue.round();
//                         });
//                       }
//                       )
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Expanded(
//                       child: Padding(
//                     padding: EdgeInsets.all(2.0),
//                     child: Container(
//                       color: Color(0xff1d2033),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               IconButton(
//                                 icon: Icon(
//                                   Icons.favorite,
//                                   size: 30,
//                                   color: isFavourite
//                                       ? Colors.red
//                                       : const Color.fromARGB(255, 114, 113, 113),
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     isFavourite = !isFavourite;
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                           const Text("Favourite"),
//                         ],
//                       ),
//                     ),
//                   )),
//                   Expanded(
//                       child: Padding(
//                     padding: EdgeInsets.all(2.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         TextButton.icon(
//                           onPressed: () {
//                             setState(() {
//                               pressed = !pressed;
//                             });
//                           },
//                           style: TextButton.styleFrom(
//                             //Change font size and weight
//                             textStyle: const TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             //Set the foreground color
//                             foregroundColor: Colors.white,
//                             backgroundColor: Color(0xff1d2033),
//                             padding: const EdgeInsets.all(20.0),
//                           ),
//                           //Set the icon
//                           icon: const Icon(
//                             Icons.female_rounded,
//                             size: 100,
//                             color: Colors.white60,
//                           ),
//                           //Set the label
//                           label: new Text(
//                             strText1,
//                             style: pressed
//                                 ? TextStyle(color: Colors.white)
//                                 : TextStyle(color: Colors.white60),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 70,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.pink
//                 ),
//                 child: Center(child: Text('Calculate',style: TextStyle(fontSize: 20),)),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//   void changeIndex(int index){
//     setState(() {
//       currentindex = index;
//     });
//   }
//   Widget radioButton(   String value,   Color color,   int index, ){
//     return Expanded(child: Container(
//       // child: ElevatedButton(
//       //   child: Text('value'),
//       //     style: color: currentindex == index ? color : Colors.grey[200], ,
//       //
//       //
//       //     onPressed: (){
//       //     changeIndex(index) ;
//       // }, ),
//     ),);
//
//   }
// }
