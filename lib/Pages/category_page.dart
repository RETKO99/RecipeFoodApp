import 'package:flutter/material.dart' ;
import 'package:mobile_projects/Widgets/meal_grid_tile.dart';


class CategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
        ),
        Expanded(child: GridView.count(padding: EdgeInsets.all(15),crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: ((MediaQuery.of(context).size.width / 2.5)/ 230),
        children: [
          MealGridTile(imgSrc: 'https://images.squarespace-cdn.com/content/v1/58939a42d2b857c51ea91c0d/6aaddc40-a2ed-4aec-9f0e-5e0d54b4c9ba/onepan+healthy+and+simple+breakfast+recipe+bloody+mary+obsessed.jpg?format=1000w' , title: 'Breakfast' ),
          MealGridTile(imgSrc: 'https://simply-delicious-food.com/wp-content/uploads/2018/07/mexican-lunch-bowls-3.jpg' , title: 'Lunch' ),
          MealGridTile(imgSrc: 'https://prettysweetblog.com/wp-content/uploads/2021/01/No-bake-chocolate-hazelnut-dessert-in-a-glass-1-2.jpg' , title: 'Dessert' ),
          MealGridTile(imgSrc: 'https://assets.bonappetit.com/photos/61b7c725ae5736f3022cb4fb/1:1/w_3505,h_3505,c_limit/20211207%20ITS%20Snack%20Mix%20Lede.jpg' , title: 'Snack' ),
          MealGridTile(imgSrc: 'https://www.mbbmanagement.com/wp-content/uploads/2020/03/beverage-management.jpg' , title: 'Beverage' ),
          MealGridTile(imgSrc: 'https://images.immediate.co.uk/production/volatile/sites/2/2021/04/LAMBFINAL-cf7a4ad.jpg?quality=90&resize=556,505' , title: 'Dinner' ),
        ],
        )
        ),
      ],

    );
  }
}
