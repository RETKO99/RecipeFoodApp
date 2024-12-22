import 'package:flutter/material.dart';
class MealTypeCard extends StatelessWidget {
   final String title ;
   final IconData icon ;


  const MealTypeCard({
   required this.title,
   required this.icon});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      color: Colors.white,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Icon(this.icon ,color: Theme.of(context).primaryColor,size: 50,),
        Text(this.title ,style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w600,),)

      ],),

    );
  }
}
