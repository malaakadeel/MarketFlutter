
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/bakeryScreen.dart';
import 'package:store/cakeScreen.dart';
import 'package:store/iceCreamScreen.dart';
import 'package:store/mealsScreen.dart';
import 'components.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}
 int selectedidex=0;

  List<Widget>categories=[
    CakeScreen(),
    bakery(),
    iceCream(),
    MealsScreen(),
  ];

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
      Container(
      child: BottomAppBar(
        child: Row(
          children: [
            FeildButton(
                text:'CAKES',
                icon_:Icons.cake,
                onPressed: (){
                  setState(() {
                    selectedidex=0;
                  });
                },
                selected: selectedidex==0,
                 ),
            FeildButton(
              text:'BAKERY',
              icon_:Icons.bakery_dining,
              onPressed: (){
                setState(() {
                  selectedidex=1;
                });
              },
              selected: selectedidex==1,
            ),
            FeildButton(
              text:'ICECREAM',
              icon_:Icons.icecream,
              onPressed: (){
                setState(() {
                  selectedidex=2;
                });
              },
              selected: selectedidex==2,
            ),
            FeildButton(
              text:'MEALS',
              icon_:Icons.set_meal,
              onPressed: (){
                setState(() {
                  selectedidex=3;
                });
              },
              selected: selectedidex==3,
            ),

          ],
        ),
      ) ,
    ),
    );
  }
}



