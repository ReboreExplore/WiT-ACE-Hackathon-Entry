import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SubmitUser extends StatefulWidget {
  const SubmitUser({Key? key}) : super(key: key);

  @override
  _SubmitUserState createState() => _SubmitUserState();
}

class _SubmitUserState extends State<SubmitUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor:Color(0XFFCBF7ED),
          appBar: AppBar(
                  title: Text('Deal for Cause'),
                  centerTitle: true,
                  backgroundColor: const Color(0XFF23395B),
                  elevation: 0.0,),
          body: Center(
            child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
                  child : Column(
                    children:<Widget> [
                      Text('Your form is successfully submitted',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14,
                                    // letterSpacing: 2.0,
                                    color: Color(0XFF103900)),),
                      TextButton.icon(
                                    onPressed: () {
                                        Navigator.pushNamed(context,'/home');
                                      },
                                    icon: Icon(Icons.home,),
                                    label: Text('Home Page'))],
                  )



),
          )


    );
  }
}
