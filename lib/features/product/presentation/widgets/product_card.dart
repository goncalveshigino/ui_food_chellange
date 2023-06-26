import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCard extends StatelessWidget {

 String path;
 String name;

   ProductCard({super.key, required this.path, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/product_details');
      },
      child: Stack(
        children: [
    
          Container(
            height: 210,
            width: 500,
            margin: const EdgeInsets.only(top: 59, left: 20, right: 20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 232, 238, 250),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const Spacer(flex: 2),
                VerticalDivider(
                  color: Colors.grey.shade300,
                  thickness: 2,
                  width: 8,
                ),
                const Spacer(),
              ],
            ),
          ),
    
          Positioned(
            bottom: 50,
            left: 47,
            child: Image.asset(
              path,
              height: 220,
              width: 210,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 50,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Positioned(
            top: 85,
            left: 290,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Kcal',
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  '130',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  height: 70,
                  width: 112,
                  child: Text(
                    'Massa,Tomate\nfolhas,Prato Preto',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star_half_outlined,
                      color: Colors.yellow.shade800,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '8.6',
                      style: TextStyle(color: Colors.yellow.shade800),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 60,
            right: 21,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 43, 41, 41),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
