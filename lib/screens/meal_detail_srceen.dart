import 'package:flutter/material.dart';

class MealDetailScren extends StatelessWidget {
  static const String routeName = '/meal-detail';
  const MealDetailScren();

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Meal Detail')),
      body: Text(mealId),
    );
  }
}
