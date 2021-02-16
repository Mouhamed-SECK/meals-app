import 'package:flutter/material.dart';

import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer();

  Widget _buildListTile(String title, IconData iconData, Function tapHandler) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Cooking UP',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildListTile("Meals", Icons.restaurant, () {
              Navigator.pushReplacementNamed(context, '/');
            }),
            _buildListTile("Filters", Icons.settings, () {
              Navigator.pushReplacementNamed(context, FilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }
}
