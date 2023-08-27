import 'package:flutter/material.dart';
import 'package:meals/Models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (meals.isEmpty) {
      widget = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'No meals',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 16),
            Text(
              "Try to pick another category",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            )
          ],
        ),
      );
    } else {
      widget = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(meals[index].title),
            //subtitle: Text(meals[index].description),
          );
        },
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: widget);
  }
}
