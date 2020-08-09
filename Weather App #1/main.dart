import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(
            color: Colors.black54,
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRaitings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return Image.network('https://img.gazeta.ru/files3/357/11881357/RIAN_3107103.HR-pic905-895x505-38248.jpg',
      fit: BoxFit.cover);
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Sunday - August 9',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          style: TextStyle(color: Colors.black54))
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.amber,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '15° Clear',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Voronezh region, Voronezh',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 22}°С',
          style: TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue[200]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRaitings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, color: Colors.amber, size: 15.0),
      Icon(Icons.star, color: Colors.amber, size: 15.0),
      Icon(Icons.star, color: Colors.amber, size: 15.0),
      Icon(Icons.star, color: Colors.amber, size: 15.0),
      Icon(Icons.star, color: Colors.grey, size: 15.0),
    ],
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text(
        'Info with openweathermap.org',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}
