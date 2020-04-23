import 'package:flutter/material.dart';

class PersonalFooter extends StatelessWidget {
  final IconData icon;
  final String datails;

  const PersonalFooter(this.icon, this.datails);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.grey,
        ),
        Text(
          datails,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
