import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';


class ImageCapture extends StatefulWidget {

  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {

  // Food food = Food();
  File _imageFile;

  // Future<void> _pickImage(ImageSource source) async {
  //   final selected = await ImagePicker().getImage(source: source);
  //   setState(() {
  //     _imageFile = File(selected.path);
  //   });
  // }

  void _clear() {
    setState(() {
      _imageFile = null;
    });
  }

  // _save() async {
  //   uploadFoodAndImages(food, _imageFile, context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Text(
                //   'Post',
                //   style: TextStyle(
                //     color: Color.fromRGBO(255, 138, 120, 1),
                //   ),
                // ),
                // SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    _imageFile != null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 20,
                                  child: Image.file(
                                    _imageFile,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
//                                  FlatButton(
//                                    child: Icon(Icons.crop),
////                              onPressed: _cropImage,
//                                  ),
                                  FlatButton(
                                    child: Icon(Icons.refresh),
                                    onPressed: _clear,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : GestureDetector(
                            // onTap: () {
                            //   _pickImage(ImageSource.gallery);
                            // },
                            child: Container(
                              // alignment: Alignment.center,
                              // width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/images/default.png",
                                width: 140,
                                height: 70,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  ],
                ),
                Container(
                  child: TextField(
                    // onChanged: (String value) {
                    //   food.Pname = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Restaurant name',

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (String value) {
                    //   food.Paddress = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Restaurant address',
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (String value) {
                    //   food.Pnumber = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Phone number',
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (String value) {
                    //   food.Psop = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Enter 4 Digit PIN',
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (String value) {
                    //   food.Psop = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Capacity before SOP',
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (String value) {
                    //   food.Pcop = value;
                    // },
                    decoration: InputDecoration(
                      labelText: 'Covid after SOP',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: GestureDetector(
                    // onTap: () {
                    //   _save();
                    // },
                    // child: CustomRaisedButton(
                    //   buttonText: 'Save',
                    // ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
