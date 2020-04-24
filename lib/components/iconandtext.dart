import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String datails;
  final String iconDescription;

  const IconText(this.icon, this.datails, this.iconDescription);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          //color: Theme.of(context).primaryColor,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            datails,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(            
            iconDescription,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
