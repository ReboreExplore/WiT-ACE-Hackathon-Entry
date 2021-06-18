import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

class NewUser extends StatefulWidget {
  const NewUser({Key? key}) : super(key: key);

  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFFCBF7ED),
      appBar: AppBar(
        title: Text('Deal for Cause'),
        centerTitle: true,
        backgroundColor: const Color(0XFF23395B),
        elevation: 0.0,
      ),
      body: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
            child: Column(
              children:<Widget>[
                Text("Enter your Name",
                    style: TextStyle(
                      fontSize:15,
                      color:Color(0XFF103900),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,)),
                FormBuilderTextField(
                    //maxLines: 2,
                    name: "Text Field"),
                SizedBox(height: 15,),
                Text("Enter the Store Address",
                    style: TextStyle(
                      fontSize:15,
                      color:Color(0XFF103900),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,)),
                FormBuilderTextField(
                    // maxLines: 2,
                    name: "Text Field"),
                SizedBox(height: 15,),
                Text("Choose identity card",
                    style: TextStyle(
                      fontSize:15,
                      color:Color(0XFF103900),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,)),
                FormBuilderRadioGroup(
                    name: "Pick Identity Proof",
                    options: [
                      FormBuilderFieldOption(value: 'PAN Card'),
                      FormBuilderFieldOption(value: 'Aadhaar Card'),
                      FormBuilderFieldOption(value: 'Voter ID'),
                      FormBuilderFieldOption(value: 'Other'),
                    ],),
                SizedBox(height: 15,),
                Text("Add the identity proof:",
                    style: TextStyle(
                      fontSize:15,
                      color:Color(0XFF103900),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,)),
                TextButton(onPressed: () => getImage(), child: Text('Upload Photo',style: TextStyle(color:Colors.redAccent,letterSpacing: 2.0,))),
                Flexible(child: _image != null ? Image.file(_image!) : Text('no Image')),

                // Column(
                //     children: [
                //       TextButton(onPressed: () => getImage(), child: Text('Press me')),
                //       Flexible(child: _image != null ? Image.file(_image!) : Text('no Image')),
                //     ],
                //   ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context,'/submit_confirm page');
                }, child: Text('submit')),



              ],
            ),
          )
      ),
    );
  }
}
