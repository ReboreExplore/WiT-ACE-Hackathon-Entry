import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFCBF7ED),
      appBar: AppBar(
        title: Text('Deal for Cause'),
        centerTitle: true,
        backgroundColor: const Color(0XFF23395B),
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
          child: Column(
              children: <Widget>[
                // Image.asset("assets/Image_4.jpg",scale: 1.0),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/Image_3.png"),
                    backgroundColor: Color(0XFFCBF7ED),
                    radius : 30.0,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Hello Store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Color(0XFF103900),
                    fontFamily: 'IndieFlower',
                  ),
                ),
                Text("Let us fight against Hunger together! ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.0,
                    color: Colors.brown,
                  ),
                ),
                Divider(
                  height: 40.0,
                  color: Colors.teal,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context,'/submit_stock');
                    },
                    icon: Icon(Icons.account_balance_wallet),
                    label: Text('Submit Stock Entry'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    )
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Check Expiry Status'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    )
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/new_user');
                    },
                    child: Text('New User Registration'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                    )
                ),]

          )
      ),
      floatingActionButton:FloatingActionButton(
        child: Text('Donate'),
        onPressed: () {},
        backgroundColor: Colors.red ,
      ),
    );
  }
}