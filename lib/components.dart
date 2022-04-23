
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FeildButton extends StatelessWidget {
  final String text;
   final IconData icon_;
   final bool selected;
   final Function() onPressed ;
  bool isFav = false ;
  FeildButton({
    required this.text,
    required this.icon_,
    required this.onPressed,
    required this.selected,Key? key}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: Column(
    children: [
    MaterialButton(
    padding: EdgeInsets.zero,
    onPressed:onPressed,
    child :Container(
    width: 60.0,
    height: 60.0,
    decoration: BoxDecoration(
    color: Colors.deepPurple[100],
    borderRadius: BorderRadius.circular(10.0,),
    ),
    child: Icon(icon_,
    size: 30.0,
     color: selected?Colors.white : Colors.black,),
    ),
    ),
    SizedBox(
    height: 5.0,
  ),
      Text(text,
     style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
     color: Colors.black,
       )),
    ],
   ),
   );
  }
}

bool isFav = false ;
Widget ItemCard
    (
      Function setState,
      @required AssetImage photo,
      @required String ItemName,
      @required String ItemType,
      @required String price
    ){
  return Stack(
    alignment: AlignmentDirectional.topEnd,
    children:[
      Card(
        shadowColor: Colors.deepPurple[900],
        margin: EdgeInsets.all(10.0),
        child: Container(
          width: 140.0,
          height: 200.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image( image: photo,
                height: 100.0,
                width: 100.0,),
              SizedBox(
                height: 5.0,
              ),
              Text(
                ItemName,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),),
              SizedBox(
                height: 5.0,
              ),
              Text(
                  ItemType,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400],
                  )
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(onTap: (){
        setState(() {
         isFav = true;
        });
      }
        , child:
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 15.0,
            end: 15.0,
          ),
          child: Icon(Icons.favorite_border,
            color:isFav? Colors.red : Colors.black,),
        ),),], );
}


