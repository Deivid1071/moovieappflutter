import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie),
        title: Text(
          'Home',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite o nome do filme',
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {debugPrint('fuiclicado');},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
