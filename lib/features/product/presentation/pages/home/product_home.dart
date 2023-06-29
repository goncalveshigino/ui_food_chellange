import 'package:flutter/material.dart';

import 'components/components.dart';

class ProductHome extends StatelessWidget {



  const ProductHome({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
         actions: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.notifications_none_outlined),
            ),
          ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [

          const TextAndIcon(),

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '28-06(7 Days) June',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
            ),
          ),

          const CustomCardText(),

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Toda's Meal",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),

          const TypeMeals(),

          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "You are enable to cancel today's meal",
              style: TextStyle( color: Colors.grey, fontWeight: FontWeight.w400 ),
            ),
          ), 


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomProduct(name: 'Rice and Checken', path: 'assets/img/gg.png',), 
                CustomProduct(name: 'Rice and Checken', path: 'assets/img/gg.png',), 
                CustomProduct(name: 'Rice and Checken', path: 'assets/img/gg.png',)
              ],
            ),
          ), 

          const SizedBox( height: 5 ), 

          const DeliveryTime()
        ],
      ),
    );
  }
}


