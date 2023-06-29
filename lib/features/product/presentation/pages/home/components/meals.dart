import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TypeMeals extends StatelessWidget {
  
  const TypeMeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/product_category');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          children: [
            Meals(
              image: 'assets/img/breakfast.png',
              color: const Color.fromARGB(255, 232, 238, 250),
              title: 'Breakfast',
            ),
            const SizedBox(width: 10),
            Meals1(
              image: 'assets/img/lunch.png',
              color: const Color.fromARGB(255, 41, 25, 25),
              title: 'Lunch',
            ),
            const SizedBox(
              width: 10,
            ),
            Meals(
              image: 'assets/img/dinner.png',
              color: const Color.fromARGB(255, 232, 238, 250),
              title: 'Dinner',
            ),
          ],
        ),
      ),
    );
  }
}

class Meals extends StatelessWidget {

  String image;
  Color color;
  String title;
  TextStyle? style;

  Meals({
    super.key,
    required this.image,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 130,
      width: 122,
      decoration: BoxDecoration(
        color: color, 
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 70,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: style,
          )
        ],
      ),
    );
  }
}

class Meals1 extends StatelessWidget {
  String image;
  Color color;
  String title;
  TextStyle? style;

  Meals1({
    super.key,
    required this.image,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 122,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 41, 25, 25),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(image, height: 70, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
