import 'package:flutter/material.dart';

void main() => runApp(MyWeatherApp());

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast', style: TextStyle(color: Colors.white70)),
          centerTitle: true,
          backgroundColor: Colors.cyan[600],
          elevation: 0.0,
        ),
        body: _constructBody(),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}

Widget _constructBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: _searchConstruct(),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Text(
                'Voronezh Region, RU',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Sunday, August 9, 2020',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 40),
              _weatherNow(),
              SizedBox(height: 40),
              _weatherDetails(),
              SizedBox(height: 30),
            ],
          ),
        ),
        Text('NEAREST DAYS WEATHER FORECAST', style: TextStyle(color: Colors.white70)),
        SizedBox(height: 10),
        _weatherCards(),
        SizedBox(height: 50),
        // Text('All rights reserved © Denis Putnov 2020', style: TextStyle(color: Colors.white))
      ],
    ),
  );
}

TextFormField _searchConstruct() {
  return TextFormField(
    decoration: InputDecoration(
      icon: Icon(Icons.search, color: Colors.white70),
      labelText: 'Enter City Name',
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
      labelStyle: TextStyle(color: Colors.white70),
    ),
  );
}

Row _weatherNow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(Icons.wb_sunny, color: Colors.white, size: 70),
      SizedBox(
        width: 15,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('14 °F', style: TextStyle(color: Colors.white70, fontSize: 45, fontWeight: FontWeight.w300)),
          Text('LIGHT SNOW', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 14)),
        ],
      )
    ],
  );
}

Row _weatherDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.toys, color: Colors.white),
          SizedBox(height: 5),
          Text('5', style: TextStyle(fontSize: 16, color: Colors.white70)),
          Text('km/hr', style: TextStyle(color: Colors.white70)),
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.ac_unit, color: Colors.white),
          SizedBox(height: 5),
          Text('3', style: TextStyle(fontSize: 16, color: Colors.white70)),
          Text('%', style: TextStyle(color: Colors.white70)),
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.bubble_chart, color: Colors.white),
          SizedBox(height: 5),
          Text('20', style: TextStyle(fontSize: 16, color: Colors.white70)),
          Text('%', style: TextStyle(color: Colors.white70)),
        ],
      ),
    ],
  );
}

SingleChildScrollView _weatherCards() {
  return SingleChildScrollView(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Friday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('6 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Suturday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('11 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Sunday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('32 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Monday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('61 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tuesday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('28 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: 150,
          decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Wednesday', style: TextStyle(fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('42 °F', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 5),
                  Icon(Icons.wb_sunny, size: 30)
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
