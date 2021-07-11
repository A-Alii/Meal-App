import 'package:flutter/material.dart';
import 'package:meal_app/Models/Meal.dart';
import 'package:meal_app/Widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {

    if(favoriteMeals.isEmpty){
      return Center(
        child: Text("You have no favorites yet - start adding some!"),
      );
    }
    else{
     return ListView.builder(
       itemBuilder: (ctx , index){
         return MealItem(
           id: favoriteMeals[index].id,
           imageUrl: favoriteMeals[index].imageUrl,
           title: favoriteMeals[index].title,
           duration: favoriteMeals[index].duration,
           complexity: favoriteMeals[index].complexity,
           affordability: favoriteMeals[index].affordability,
         );
       },
       itemCount: favoriteMeals.length,
     );
    }
  }
}
