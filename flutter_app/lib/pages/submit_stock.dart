import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

class SubmitStocks extends StatefulWidget {
  const SubmitStocks({Key? key}) : super(key: key);

  @override
  _SubmitStocksState createState() => _SubmitStocksState();
}

class _SubmitStocksState extends State<SubmitStocks> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  final _formKey = GlobalKey<FormBuilderState>();
  // String _sellerid = 0;
  // String _name = "a";
  // // String _mfgdate;
  // // String _expdate;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //
  // Widget _buildsellerid(){
  //   return TextFormField(
  //           decoration: InputDecoration(
  //                       labelText: 'SellerID'),
  //           validator: (String value){
  //             if(value.isEmpty){
  //               return 'Seller ID is required';
  //             }
  //           },
  //           onSaved: (String value){
  //             _sellerid = value;
  //           }
  //   );
  // }
  // Widget _buildname(){
  //   return null;
  // }
  // Widget _buildmfgdate(){
  //   return null;
  // }
  // Widget _buildexpdate(){
  //   return null;
  // }
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
                        Text("Enter your SellerID",
                            style: TextStyle(
                                fontSize:15,
                                color:Color(0XFF103900),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,)),
                        FormBuilderTextField(
                            // maxLines: 2,
                            name: "Text Field"),
                        SizedBox(height: 15,),
                        Text("Name of the Product",
                            style: TextStyle(
                              fontSize:15,
                              color:Color(0XFF103900),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,)),
                        FormBuilderTextField(
                            // maxLines: 2,
                            name: "Text Field"),
                        SizedBox(height: 15,),
                        Text("Enter MFG Date",
                            style: TextStyle(
                              fontSize:15,
                              color:Color(0XFF103900),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,)),
                        FormBuilderDateTimePicker(
                            name: "Date Time Picker"),
                        SizedBox(height: 15,),
                        Text("Enter Expiry Date",
                            style: TextStyle(
                              fontSize:15,
                              color:Color(0XFF103900),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,)),
                        FormBuilderDateTimePicker(
                            name: "Date Time Picker"),
                        SizedBox(height: 15,),
                        Text("Add Photo:",
                              style: TextStyle(
                                      fontSize:15,
                                      color:Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,)),
                        TextButton(onPressed: () => getImage(), child: Text('Take Photo')),
                        Flexible(child: _image != null ? Image.file(_image!) : Text('no Image')),

                        // Column(
                        //     children: [
                        //       TextButton(onPressed: () => getImage(), child: Text('Press me')),
                        //       Flexible(child: _image != null ? Image.file(_image!) : Text('no Image')),
                        //     ],
                        //   ),
                        SizedBox(height: 15,),
                        ElevatedButton(onPressed: () {}, child: Text('submit')),



                      ],
                ),
              )
        ),
    );
  }
}

