import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:safeouts_bussiness/screens/AdminOtp.dart';
import 'package:safeouts_bussiness/screens/admin_homepage.dart';


class Profile extends StatefulWidget {

  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<Profile> {

  // Food food = Food();
  File _imageFile;
  File imageFile;//take file path


  Future<void> _pickImage(ImageSource source) async {
    final selected = await ImagePicker().getImage(source: source);
    setState(() {
      _imageFile = File(selected.path);
    });
  }

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
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SingleChildScrollView(

            physics: BouncingScrollPhysics(),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

            SizedBox(
                  height: 10,
                ),


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
                            width: MediaQuery.of(context).size.width - 370,
                            child: Image.file(
                              _imageFile,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Icon(Icons.edit,),
                              onPressed: _clear,
                            ),
                            FlatButton(
                              child: Icon(Icons.remove),
                              // onPressed: _cropImage,
                            ),

                          ],
                        ),

                      ],
                    )

                        : GestureDetector(
                      onTap: () {
                        _pickImage(ImageSource.gallery);
                      },

                      child: Container(

                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/reslogo.png",
                          width: 100,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),

                      ),

                    ),
                  ],

                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    onChanged: (String value) {
                      // food.Pname = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Restaurant's name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 25,

                      ),

                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    onChanged: (String value) {
                      // food.Paddress = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Restaurant's address",
                      border: InputBorder.none,

                    ),
                  ),
                ),
                // Container(
                //   child: TextField(
                //     keyboardType: TextInputType.multiline,
                //     maxLines: null,
                //     onChanged: (String value) {
                //       food.Pnumber = value;
                //     },
                //     decoration: InputDecoration(
                //       hintText: "Add phone no.",
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    hintText: 'Add phone no.',
                    border: InputBorder.none,

                    hintStyle: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                // Container(
                //   child: TextField(
                //     keyboardType: TextInputType.multiline,
                //     maxLines: null,
                //     onChanged: (String value) {
                //       // food.Psop = value;
                //     },
                //     decoration: InputDecoration(
                //       labelText: 'Enter 4 Digit PIN',
                //     ),
                //   ),
                // ),
                // Container(
                //   child: TextField(
                //     keyboardType: TextInputType.multiline,
                //     maxLines: null,
                //     onChanged: (String value) {
                //       // food.Psop = value;
                //     },
                //     decoration: InputDecoration(
                //       hintText: 'Capacity no.pre-covid   Add values',
                //       hintStyle: TextStyle(
                //           color: Colors.black54,
                //           fontWeight: FontWeight.bold
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   child:
                //   TextField(
                //     keyboardType: TextInputType.multiline,
                //     maxLines: null,
                //     onChanged: (String value) {
                //       // food.Pcop = value;
                //     },
                //     decoration: InputDecoration(
                //       hintText: 'Capacity no.pre-after SOP Add values',
                //       hintStyle: TextStyle(
                //           color: Colors.black54,
                //           fontWeight: FontWeight.bold
                //       ),
                //     ),
                //   ),
                // ),
                // Row(
                //   children: <Widget>[
                //     Expanded(child: TextField()),
                //   ],
                // )
                SizedBox(
                  height: 10,
                ),

                Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Capacity no.pre-covid',
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,   fontSize: 17,

                          ),),
                      ),

                      Expanded(child: TextField(

                        keyboardType: TextInputType.number,
                        maxLines: null,
                        onChanged: (String value) {
                          // food.Pcop = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add values',
                          hintStyle: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold
                          ),
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      )),
                    ]),
                // SizedBox(
                //   height: 1,
                // ),
                Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Capacity no.after SOP',
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,   fontSize: 17,

                          ),
                        ),
                      ),

                      Expanded(child: TextField(
                        keyboardType: TextInputType.number,
                        maxLines: null,
                        onChanged: (String value) {
                          // food.Pcop = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add values',
                          hintStyle: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold
                          ),
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      )),
                    ]),
                SizedBox(
                  height: 30,
                ),
                Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Pictures',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,   fontSize: 20,

                          ),),
                      ),

                    ]),
                SizedBox(
                  height: 30,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    FlatButton(
                      child: Icon(Icons.add,size: 50 ),

                      // onPressed: _pickImage,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Text('Tap to add images',
                      style: TextStyle(color: Colors.grey,

                      ),),
                  ],

                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 390.0,
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),

                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0x00fbbb)),
                    ),
                    color: Colors.teal.withOpacity(0.7),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),

                    elevation: 0.0,
                    onPressed: () async {
                      // _showlogout();
                    },

                    child: Text('                  Save Changes                            ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // Container(
                //   width: 510.0,
                //   height: 60.0,
                //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                //
                //   child: RaisedButton(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(8),
                //       side: BorderSide(color: Colors.white),
                //     ),
                //     color: Colors.teal.withOpacity(0.7),
                //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                //
                //     elevation: 0,
                //     onPressed: () async {
                //       // _showlogout();
                //     },
                //
                //     child: Text('Save Changes',
                //         style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //         )),
                //   ),
                // ),

                // SizedBox(
                //   width: 390,
                //   height: 60,
                //   child: RaisedButton(
                //     child: Text('Save changes'),
                //     elevation: 2,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(16.0))),
                //     textColor: Colors.white,
                //     onPressed: () {
                //       Navigator.of(context).pushReplacement(
                //           MaterialPageRoute(
                //               builder: (BuildContext context) => Home()
                //           )
                //       );
                //     },
                //     color: Colors.teal.withOpacity(0.7),
                //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                //   ),
                // )

              ],

            ),

          ),
        ),
      ),
    );
  }
  _openCameraOrGallery(String param) async {
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile =
    await imagePicker.getImage(source: ImageSource.gallery);
    imageFile = File(pickedFile.path);
    print("Image Path is $imageFile");
    setState(() {});
  }
}
