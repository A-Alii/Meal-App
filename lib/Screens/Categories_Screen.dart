import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/categoryItem.dart';
import 'package:meal_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData) =>
            CategoryItem(catData.id, catData.title, catData.color),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          //mainAxisExtent: 20,
        ),
      ),
    );
  }
}
