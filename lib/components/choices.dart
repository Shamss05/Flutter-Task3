import 'package:flutter/material.dart';

class ChoicesContainer extends StatelessWidget {
  final String num;
  final String choice;
  final Color color;

  const ChoicesContainer (
      this.num,
      this.choice,
      this.color,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
    Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(color: Colors.deepPurpleAccent,borderRadius: BorderRadius.circular(100)),
    child: Center(
    child: Text(num,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
    ),
    ),
    SizedBox(width: 20,),
    Text(choice,style: TextStyle(color: color,fontSize: 28),)
],
);
  }
}
