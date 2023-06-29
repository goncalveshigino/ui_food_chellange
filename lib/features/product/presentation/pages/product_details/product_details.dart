
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class ProductDetailsPage extends StatelessWidget {

   const ProductDetailsPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Stack(
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Fried chicken',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Container(
                    height: 390,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 37, 21, 21),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),),),
                  ),

                  const SizedBox(width: 10),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Column(
                      children: const [

                        Text('Kcal'),
                        Text(
                          '130',
                          style: TextStyle(
                            color: Color.fromARGB(255, 37, 21, 21),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Weight'),
                        Text(
                          '250g',
                          style: TextStyle(
                            color: Color.fromARGB(255, 37, 21, 21),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ), 
                ],
              ),
          
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Details',
                  style: TextStyle(
                      color: Color.fromARGB(255, 37, 21, 21),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 60),
                child: Text(
                  'Gdjskskgd ggdgdtr bdbdghs  bfjfu gdrtevsbvdg gdgdgdgd',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                           Row(
                              children: [
                                Icon(
                                  Icons.star_half_outlined,
                                  color: Colors.yellow.shade800,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  '8.6',
                                  style: TextStyle(
                                    color:Colors.yellow.shade800
                                  ),
                                ),
                              
                              ],
                           ),
                          const Text(
                            '123 Reviews',
                            style: TextStyle(
                                color: Color.fromARGB(255, 37, 21, 21),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 37, 21, 21),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'My Meal',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
    
          Positioned(
            top: 20,
            left: 10,
            child: FadeInLeft(
              duration: const Duration(seconds: 1),
              child: Image.asset(
                'assets/img/gg.png',
                height: 380,
                width: 460,
              ),
            ),
           ),
    
      
          const Positioned(
            left: 70,
            bottom: 400,
            child: Text(
              'Massa e muito tomate', 
              style: TextStyle( color: Colors.white70),
            ), 
          ), 
    
    
        ],
      ),
    );
  }
}
