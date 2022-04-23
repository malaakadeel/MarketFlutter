import 'package:flutter/material.dart';

import 'components.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({Key? key}) : super(key: key);

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              ItemCard(setState,
                  AssetImage('images/pasta.jpg'), 'Pasta', 'Meals','50L.E.'),
              ItemCard(setState,
                  AssetImage('images/sushi.jpg'), 'Suchi', 'Meals', '55L.E.')
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              ItemCard(setState,
                  AssetImage('images/pizza.jpg'), 'Pizza', 'Meals','45L.E.'),
              ItemCard(setState,
                  AssetImage('images/burger.jpg'), 'Burger', 'Meals', '50L.E.')
            ],
          ),
        ],
      ),
    );
  }
}
