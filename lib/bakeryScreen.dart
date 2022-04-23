import 'package:flutter/material.dart';

import 'components.dart';

class bakery extends StatefulWidget {
  const bakery({Key? key}) : super(key: key);

  @override
  State<bakery> createState() => _bakeryState();
}

class _bakeryState extends State<bakery> {
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
                      AssetImage('images/bread.jpg'), 'Bread', 'bakery','30L.E.'),
                  ItemCard(setState,
                      AssetImage('images/croissonts.webp'), 'Croissonts', 'bakery', '25L.E.')
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  ItemCard(setState,
                      AssetImage('images/donuts.webp'), 'Donuts', 'bakery','35L.E.'),
                  ItemCard(setState,
                      AssetImage('images/toast.jpg'), 'Toast', 'bakery', '20L.E.')
                ],
              ),
            ],
          ),
        );
  }
}

