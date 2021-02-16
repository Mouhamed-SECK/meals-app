import 'package:flutter/material.dart';

import '../widget/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen();

  static const routeName = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your fav'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('filter'),
      ),
    );
  }
}
