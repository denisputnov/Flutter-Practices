import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.fromLTRB(32, 50, 32, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset('./assets/icons/logo.png'),
                      Container(
                        child: ClipRRect(
                          child: Image.asset('./assets/icons/avatar.png'),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Color(0xff0070ba),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      'Hello, Denis!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    '\$ 272.30',
                    style: TextStyle(
                      fontSize: 44,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Your Balance',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('./assets/backimage.png'),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(32, 24, 32, 32),
            child: Column(
              children: <Widget>[
                Container(
                  height: 190,
                  padding: EdgeInsets.only(bottom: 30),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 16),
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.all(24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset('./assets/icons/25.png'),
                              Text(
                                'Send\nMoney',
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffbccae4),
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff0664b3),
                                Color(0xff1449a2),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              tileMode: TileMode.clamp,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 16),
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.all(24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset('./assets/icons/25.png'),
                              Text(
                                'Request\nPayment',
                                style: TextStyle(fontSize: 15, color: Color(0xff005ea6)),
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
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          padding: EdgeInsets.all(24),
                          child: Center(
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
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
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Activity',
                          style: TextStyle(
                            color: Color(0xff243656),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                    TransactionInfoWidget(
                      image: './assets/icons/32.png',
                      adress: 'Mike Rine',
                      moment: '2 hours ago',
                      money: '250',
                      isIncrement: true,
                    ),
                    TransactionInfoWidget(
                      image: './assets/icons/32.png',
                      adress: 'Google Drive',
                      moment: 'Yesterday',
                      money: '138.5',
                      isIncrement: false,
                    ),
                    TransactionInfoWidget(
                      image: './assets/icons/32.png',
                      adress: 'Casey Smith',
                      moment: '1 week ago',
                      money: '531',
                      isIncrement: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionInfoWidget extends StatelessWidget {
  String image;
  String adress;
  String moment;
  String money;
  bool isIncrement;

  TransactionInfoWidget({this.image, this.adress, this.moment, this.money, this.isIncrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(image),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  adress,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff243656),
                  ),
                ),
                Text(
                  moment,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  isIncrement ? '+\$$money' : '-\$$money',
                  style: TextStyle(
                      color: isIncrement ? Color(0xff37d92b) : Color(0xfff47090),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
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
      ),
    );
  }
}
