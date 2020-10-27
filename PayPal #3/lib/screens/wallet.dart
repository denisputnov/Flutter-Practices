import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Container(),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('./assets/backimage.png'),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat,
                    ),
                  ),
                ),
                AppBar(
                  title: Text("Wallet", style: TextStyle(fontSize: 16),),
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      child: Icon(Icons.arrow_back_ios, size: 20),
                      onTap: () {},
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Icon(Icons.edit, size: 20),
                        onTap: () {},
                      ),
                    )
                  ],
                  automaticallyImplyLeading: false,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 130),
                    child: Image.asset('./assets/icons/avatar_high.png'),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Text(
                            'Personal Info',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        PersonalInfoDetail(
                          info: "Name",
                          value: "Denis Putnov",
                        ),
                        PersonalInfoDetail(
                          info: "E-mail",
                          value: "denis.putnov@gmail.com",
                        ),
                        PersonalInfoDetail(
                          info: "Phone",
                          value: "+4 1782 049 294",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'My banking cards',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                    ),
                                    Text('Add', style: TextStyle(color: Colors.grey))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        BankingCardInfo(
                          icon: './assets/icons/32.png',
                          name: "Visa",
                          number: '4*** **** ****2 4746',
                          marginBottom: 10,
                        ),
                        BankingCardInfo(
                          icon: './assets/icons/32.png',
                          name: "MasterCard",
                          number: '4*** **** ****3 5236',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonalInfoDetail extends StatelessWidget {
  String info;
  String value;

  PersonalInfoDetail({this.info, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 80,
            child: Text(
              '$info',
              style: TextStyle(color: Color(0xff243656), fontSize: 18),
            ),
          ),
          Text(
            '$value',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff243656)),
          ),
        ],
      ),
    );
  }
}

class BankingCardInfo extends StatelessWidget {
  String icon;
  String name;
  String number;
  double marginBottom;
  BankingCardInfo({this.icon, this.name, this.number, this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: marginBottom),
      child: Row(
        children: <Widget>[
          Image.asset(icon),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name, style: TextStyle(color: Color(0xff243656), fontSize: 16)),
              Text(number, style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xfff6f9fc),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
