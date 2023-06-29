

import 'package:flutter/material.dart';

class CustomCardText extends StatelessWidget {
  const CustomCardText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        CardText2(
          color: const Color.fromARGB(255, 232, 238, 250), 
          text1: 'Sat', style: const TextStyle(color: Colors.grey), 
          text2: '24', 
          // borderRadius: BorderRadius.only( topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        ),

        const SizedBox( width: 2 ), 

        CardText(
          color: const Color.fromARGB(255, 232, 238, 250), 
          text1: 'San', style: const TextStyle(color: Colors.grey),
          text2: '25',
       
        ),

        const SizedBox( width: 2 ), 

        CardText(
          color: const Color.fromARGB(255, 232, 238, 250), 
          text1: 'Mon', style: const TextStyle(color: Colors.grey),
          text2: '26',

        ), 

        const  SizedBox( width: 2 ), 

        CardText(
           color: const Color.fromARGB(255, 232, 238, 250),  
          text1: 'Tue', style: const TextStyle(color: Colors.grey),
          text2: '27',
      
        ), 
        const  SizedBox( width: 2 ), 
        CardText(
          color:const Color.fromARGB(255, 41, 25, 25), 
          text1: 'Wed', style: const TextStyle(color: Colors.white),
          text2: '28',
       
        ), 
        const  SizedBox( width: 2 ), 
        CardText(
          color: const Color.fromARGB(255, 221, 188, 148), 
          text1: 'Thu', style: const TextStyle(color: Colors.black),
          text2: '29',
           
        ),
        const  SizedBox( width: 2 ), 
        CardText1(
          color: const Color.fromARGB(255, 221, 188, 148), 
          text1: 'Fri', style: const TextStyle(color: Colors.black),
          text2: '30',
        )
      ],
    );
  }
}

class CardText extends StatelessWidget {

  String text1;
  String text2;
  TextStyle style;
  Color color;
 

   CardText({
    super.key, 
    required this.text1, 
    required this.text2,
    required this.color,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      width: 50,
      padding: const EdgeInsets.only(top: 4),
      color: color,
      child: Column(
        children: [
           Text(text1, style: style,), 
           Text(text2, style: style,)
        ],
      ),
    );
  }
}

class CardText1 extends StatelessWidget {

  String text1;
  String text2;
  TextStyle style;
  Color color;

   CardText1({
    super.key, 
    required this.text1, 
    required this.text2,
    required this.color,
    required this.style
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      width: 50,
      margin: const EdgeInsets.only(right: 20.0,),
      padding: const EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: color, 
       borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10), 
        bottomRight: Radius.circular(10),
       )
      ),
      child: Column(
        children: [
           Text(text1, style: style,), 
           Text(text2, style: style,)
        ],
      ),
    );
  }
}

class CardText2 extends StatelessWidget {

  String text1;
  String text2;
  TextStyle style;
  Color color;

   CardText2({
    super.key, 
    required this.text1, 
    required this.text2,
    required this.color,
    required this.style
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, 
      width: 50,
      margin: const EdgeInsets.only(left: 20.0,),
      padding: const EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: color, 
        borderRadius: const BorderRadius.only(
         topLeft: Radius.circular(10), 
         bottomLeft: Radius.circular(10),
       ),
      ),
      child: Column(
        children: [
           Text(text1, style: style,), 
           Text(text2, style: style,)
        ],
      ),
    );
  }
}