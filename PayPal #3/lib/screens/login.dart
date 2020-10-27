import "package:flutter/material.dart";
import "package:PayPal/screens/app.dart";

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 80),
                Center(
                  child: Image.asset('assets/logo_and_title.png'),
                ),
                SizedBox(height: 60),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelStyle: TextStyle(fontSize: 14),
                    labelText: 'Enter your name of e-mail',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelStyle: TextStyle(fontSize: 14),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => App()));
                  },
                  padding: EdgeInsets.all(0),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    child: Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                        colors: [Color(0xff0665b3), Color(0xff1547a1)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Having trouble logging in?',
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
                SizedBox(height: 20),
                Divider(height: 1),
                SizedBox(height: 20),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
