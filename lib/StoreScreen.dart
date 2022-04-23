import 'package:flutter/material.dart';
import 'package:store/components.dart';
import 'bakeryScreen.dart';
import 'cakeScreen.dart';
import 'iceCreamScreen.dart';
import 'mealsScreen.dart';


class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreState();
}
@override

class _StoreState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu_open_sharp,
          color: Colors.indigo,
        ),
        title: Text(
          'Your Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.deepPurple,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Colors.grey[300],
            ),
            child: IconButton(onPressed: () {
              print('arrow pressed!');
            },
                icon: Icon(
                  Icons.double_arrow,
                  color: Colors.indigo,)),
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Colors.grey[300],
            ),
            child: IconButton(onPressed: () {
              print('Star pressed!');
            },
                icon: Icon(Icons.favorite_border,
                  color: Colors.red,)),
          ),
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row( // search bar.
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.grey[300],
                  ),
                  width: 260.0,
                  height: 45.0,
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'search product here',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.grey[300],
                  ),
                  child: IconButton(onPressed: () {
                    print('settings');
                    // //     ItemCard(setState,
                  }, icon: Icon(
                    Icons.settings,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
