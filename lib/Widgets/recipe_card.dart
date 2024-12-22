import 'package:flutter/material.dart' ;

class RecipeCard extends StatelessWidget {
  final String imgSrc ;
  final String title ;
  final String prepTime ;
  final String cookTime ;

  RecipeCard({required this.imgSrc,required this.title,required this.prepTime,required this.cookTime});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 170,
          height: 400,
          child: Image.network(this.imgSrc,
          fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
          width: 160,
          height: 90,
          color: Colors.white,
          padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(this.title,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w700),),
            Text(
              '${this.prepTime} Prep Time',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.lightGreen,
              ),
            ),
            Text(
              '${this.cookTime} Cook Time',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.lightGreen,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  size: 12,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ],),
        ),
        ),

      ],
    );
  }
}
