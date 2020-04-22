import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String datails;

  const IconText(this.icon, this.datails);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        //color: Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(icon, color: Colors.grey,),
          Text(
            datails,
            style: TextStyle(            
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              
            ),
          )
        ],
      ),
    );
  }
}
