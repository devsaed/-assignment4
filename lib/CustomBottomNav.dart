import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final Map<String, IconData> icons;
  final Function fun;

  CustomBottomNav(this.icons, this.fun);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (i) {
        fun(i);
      },
      items: icons.values
          .map((e) => BottomNavigationBarItem(icon: Icon(e,color: Colors.grey[700],size: 30,), label: ''))
          .toList(),
    );
  }
}
