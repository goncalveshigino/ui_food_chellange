import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ProductsPage extends StatelessWidget {

   static const name = 'product';

  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [ 
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon( Icons.notifications_none_outlined),
          ),
      ],),
      body: Column(
        children: [
      
      
          Row(
            children: [
      
      
             Expanded(
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
             
                    SizedBox( height: 20 ), 
             
                    Padding(
                      padding: EdgeInsets.only( left: 20),
                      child: Text('Catering Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                    ), 
                    Padding(
                      padding: EdgeInsets.only( left: 20),
                      child: Text(
                        " Your Today's Meal", 
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
             ),
      
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton.icon(
                  onPressed: (){}, 
                  icon: const Icon( Icons.filter ), 
                  label: const Text('Filter'),
                ),
              )
      
            ],
          ), 
      
      
      
          const SizedBox( height: 35),
      
      
          Row(
          children: [
                
          Container(
            height: 50, 
            width: 160, 
            margin:const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 43, 41, 41),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: const [
      
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon( Icons.food_bank_outlined, color: Colors.white,),
                ), 
      
                Text('Regular food', style: TextStyle( fontSize: 18, color: Colors.white),)
              ],
            ),
          ),
                
          const SizedBox( width: 10 ),
                
          Container(
            height: 50, 
            width: 160, 
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 238, 250),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: const [
      
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon( Icons.cookie_outlined, color: Color.fromARGB(255, 43, 41, 41),),
                ), 
      
                Text('Sea food', style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 43, 41, 41)),)
              ],
            ),
          ),
          ],
        ),

          const SizedBox( height: 40 ),
          ProductCard(path: 'assets/img/gg.png', name: 'Arroz com Frango',), 
          const SizedBox( height: 40 ),
          ProductCard(path: 'assets/img/prato.png', name: 'Massa e Tomate')
      
        ],
      )


    );
  }
}




