import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: ClipOval(
                child: Image.network(
                    'https://instagram.fbkk15-1.fna.fbcdn.net/v/t51.2885-19/s150x150/53005341_566812160469985_5633360301790330880_n.jpg?_nc_ht=instagram.fbkk15-1.fna.fbcdn.net&_nc_ohc=4z9dK4T-lqYAX9DoQOD&tp=1&oh=089bc44fe98288e69e4cd5b3870fbb3b&oe=603A8F17'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey[300])),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Basic Info',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Column(
                  children: ListTile.divideTiles(tiles: [
                    ListTile(
                      title: Text('Name'.toUpperCase()),
                      subtitle: Text(
                        'Mark Story',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Birthday'.toUpperCase()),
                      subtitle: Text(
                        'Dec 1, 1990',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    ListTile(
                      title: Text('Gender'.toUpperCase()),
                      subtitle: Text(
                        'Male',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      trailing: Icon(Icons.chevron_right),
                    )
                  ], color: Colors.grey)
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
