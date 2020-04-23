import 'package:flutter/material.dart';
import 'package:tmdbmovieapp/components/personalfooter.dart';

import 'package:tmdbmovieapp/screens/movie/list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();

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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite o nome do filme',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    final String search = _searchController.text;
                    if (search != '') {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) {
                            return MovieList(search);
                          },
                        )),
                      );
                    }
                  },
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset('images/logo.png'),
                  ),
                  Text(
                    'Movie Search APP',
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Desenvolvido por',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PersonalFooter(Icons.code, 'Deivid Magno Marques Nascimento'),
                  PersonalFooter(Icons.phone, '11 983481681'),
                  PersonalFooter(
                      Icons.email, 'deivid.magno.nascimento@gmail.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
