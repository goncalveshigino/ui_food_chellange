import 'package:flutter/material.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 70, 
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 238, 250),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.only( left: 20 ),
              child: ClipOval(
                child: Container(
                  height: 55, 
                  width: 55, 
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      stops: [0.6, 3.0],
                      colors: [
                        Color.fromARGB(255, 37, 21, 21), 
                        Colors.grey
                      ]
                    )
                  ),
                  child: const Icon( Icons.shopping_bag_outlined, size: 37, color: Colors.grey,),
                ),
              ),
            ), 

            const SizedBox( width: 30 ),

            Padding(
              padding: const EdgeInsets.only( top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('1 hr 21 min', style: TextStyle( fontWeight: FontWeight.bold ),),
                  Text('Delivery Time', style: TextStyle( color: Colors.grey ))
                ],
              ),
            ), 

           const Spacer(),

            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon( Icons.local_pizza_outlined, size: 37, color: Colors.grey),
            )

          ],
        ),
      ),
    );
  }
}