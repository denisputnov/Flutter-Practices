import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts", style: TextStyle(color: Color(0xff243656), fontSize: 16)),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            child: Icon(Icons.arrow_back_ios, size: 20, color: Color(0xff243656)),
            onTap: () {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(Icons.edit, size: 20, color: Color(0xff243656)),
              onTap: () {},
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Color(0xff243656),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 10.0),
                    prefixIcon: Icon(Icons.search, color: Color(0xff919bab)),
                    hintText: "Enter a name or e-mail",
                    hintStyle: TextStyle(color: Color(0xff919bab), fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Contact(name: "Andrew Dilan", email: 'andrew.dilan@gmail.com'),
              Contact(name: "Alex Milton", email: 'alxmilton@yahoo.com'),
              Contact(name: "Don Norman", email: 'donnorman@gmail.com'),
              Contact(name: "Jason Craig", email: 'jcraig90@gmail.com'),
              Contact(name: "Mike Rine", email: 'mikerine@gmail.com'),
              Contact(name: "Nick Aeron", email: 'aeronn@gmail.com'),
              Contact(name: "Vena Sunny", email: 'vena@gmail.com'),
              Contact(name: "Don Norman", email: 'donnorman@gmail.com'),
              Contact(name: "Jason Craig", email: 'jcraig90@gmail.com'),
              Contact(name: "Mike Rine", email: 'mikerine@gmail.com'),
              Contact(name: "Nick Aeron", email: 'aeronn@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  String name;
  String email;

  Contact({this.name, this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff243656),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xfff5f7fa),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name, style: TextStyle(fontSize: 16, color: Color(0xff243656)),),
              Text(email, style: TextStyle(fontSize: 12, color: Colors.grey),)
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Color(0xfff6f9fc),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }
}
