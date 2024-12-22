import 'package:flutter/material.dart';

import '../Widgets/meal_type_card.dart';
import '../Widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20,30, 0, 10),
          child: Text('Food Recipe', style: TextStyle(color: Theme.of(context).primaryColor , fontWeight: FontWeight.w400 ,fontSize: 30 ,letterSpacing: 0.5,),),),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Good Morning,\nLouei',style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 22),),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://www.ennaharonline.com/wp-content/uploads/2021/07/maxresdefault-16-3.jpg'),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child : TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white ,
                    filled: true ,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.zero,
                    ) ,
                    hintText: 'search recipe here...',
                  ),
                ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(16.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Icon(
                    Icons.tune ,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MealTypeCard(
                  title :'Breakfast',
                  icon : Icons.breakfast_dining,
                ),
                MealTypeCard(
                  title : 'Lunch' ,
                  icon : Icons.lunch_dining,
                ),
                MealTypeCard(
                  title : 'dessert',
                  icon :  Icons.icecream,
                ),
                MealTypeCard(
                  title : 'Dinner' ,
                  icon : Icons.dinner_dining,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Text('Popular Recipes',
              style : TextStyle(
                fontWeight: FontWeight.w700 ,
                fontSize: 22,
              ),
            ),
          ),
          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RecipeCard(
                imgSrc: 'https://images.unsplash.com/photo-1646318754907-dc7c0d236a97?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: 'Ice Cream',
                prepTime: '45 Min',
                cookTime: '15 Min',
              ),
              RecipeCard(
                imgSrc: 'https://images.unsplash.com/photo-1604467715878-83e57e8bc129?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: 'Taco',
                prepTime: '30 Min',
                cookTime: '10 Min',
              ),
              RecipeCard(
                imgSrc: 'https://images.unsplash.com/photo-1666437469803-c6d5ba853a50?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                title: 'Fish',
                prepTime: '25 Min',
                cookTime: '30 Min',
              ),
              RecipeCard(
                imgSrc: 'https://bakinghermann.com/wp-content/uploads/2024/07/Mhajeb-2.jpg',
                title: 'Mhajeb Skhounin',
                prepTime: '2 Hours',
                cookTime: '30 Min',
              ),
            ],
          ),
          ),
        SizedBox(height: 12,),
      ],
    );
  }
}
