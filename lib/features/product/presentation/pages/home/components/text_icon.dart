import 'package:flutter/material.dart';

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: Row(
        children: [
           
          Column(
            children: const [
              Text(
                'Hi Goncalves', 
                style: TextStyle( 
                  fontWeight: FontWeight.bold, 
                  fontSize: 18, 
                  color: Color.fromARGB(255, 43, 41, 41)
                ),
              ), 
              Text(
                "Your Today's Meal", 
                style: TextStyle(
                  color: Colors.grey, 
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ), 
          const  Spacer(),
          ClipOval(
            child: Container(
              height: 50, 
              width: 50, 
              color: Colors.green,
              child: const Icon( Icons.add, color:Colors.white ),
            ),
          )
    
        ],
      ),
    );
  }
}