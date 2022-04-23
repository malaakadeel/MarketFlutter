import 'package:flutter/material.dart';
import 'package:store/components.dart';


class iceCream extends StatefulWidget {
  const iceCream({Key? key}) : super(key: key);

  @override
  State<iceCream> createState() => _iceCreamState();
}

class _iceCreamState extends State<iceCream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        children:[
         Row(
        children: [
          ItemCard(setState,
              AssetImage('images/vanilla.jpg'), 'Vanilla', 'icecream','20L.E.'),
          ItemCard(setState,
              AssetImage('images/chocolate.jpg'), 'Chocolate', 'icecream', '20L.E.')
        ],
      ),
         Row(
        children: [
          ItemCard(setState,
              AssetImage('images/strawberry.jpg'), 'Strawberry', 'icecream','20L.E.'),
          ItemCard(setState,
              AssetImage('images/oreo.jpg'), 'Oreo', 'icecream', '20L.E.')
        ],
      ),
        ],
      ),
    );
  }
}
