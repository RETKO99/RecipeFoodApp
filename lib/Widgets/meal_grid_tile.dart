import 'package:flutter/material.dart';

class MealGridTile extends StatelessWidget {
  final String imgSrc ;
  final String title ;

  MealGridTile({required this.imgSrc, required this.title});



  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(imgSrc,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:[
                    Colors.grey[900]!.withOpacity(0.15),
                    Colors.grey[900]!,
                  ],
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),

            )),
      ],
    );
  }
}
