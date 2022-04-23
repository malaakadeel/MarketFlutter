import 'package:flutter/material.dart';

import 'components.dart';

class CakeScreen extends StatefulWidget {
  const CakeScreen({Key? key}) : super(key: key);

  @override
  State<CakeScreen> createState() => _CakeScreenState();
}

class _CakeScreenState extends State<CakeScreen> {
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
                  AssetImage('images/chocolatecake.jpg'), 'Chocolate', 'Cake','40L.E.'),
              ItemCard(setState,
                  AssetImage('images/carrot.jpg'), 'Carrot', 'Cake', '45L.E.')
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              ItemCard(setState,
                  AssetImage('images/cheesecake.jpg'), 'Cheese cake', 'Cake','45L.E.'),
              ItemCard(setState,
                  AssetImage('images/srawcake.jpg'), 'Strawberry', 'Cake', '40L.E.')
            ],
          ),
        ],
      ),
    );
  }
}
