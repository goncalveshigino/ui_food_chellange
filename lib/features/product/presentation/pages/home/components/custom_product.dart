import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class CustomProduct extends StatelessWidget {

 final String path;
 String name;

   CustomProduct({super.key, required this.path, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/product_details');
      },
      child: Stack(
        children: [
    
          Container(
            height: 180,
            width: 235,
            margin: const EdgeInsets.only(top: 59, left: 20, right: 1),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 238, 250),
                borderRadius: BorderRadius.circular(20)),
          ),
    
          Positioned(
            bottom: 50,
            left: 15,
            child: Image.asset(
              path,
              height: 220,
              width: 210,
              fit: BoxFit.cover,
            ),
          ),
          
          Positioned(
            bottom: 30,
            left: 40,
            child: Text(
              name,
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Positioned(
            top: 110,
            left: 209,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Kcal',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '130',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
               
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
