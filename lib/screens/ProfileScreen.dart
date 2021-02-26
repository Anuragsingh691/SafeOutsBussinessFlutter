import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:getflutter/getflutter.dart';


class Profile extends StatefulWidget {

  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<Profile> {

  File _imageFile;
  File imageFile;//take file path
  File _profileImageFile;

  Future<void> _pickImage() async {
    final selected = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      _profileImageFile = File(selected.path);
    });
  }
  void _clear() {
    setState(() {
      _profileImageFile = null;
    });
  }

  // void _clear() {
  //   setState(() {
  //     _imageFile = null;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
          child: SingleChildScrollView(

            physics: BouncingScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(
                    height: 10,
                    thickness:10),
            SizedBox(
                  height: 10,
                ),
                    _profileImageFile != null
                        ? Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // CircleAvatar(
                        //   // borderRadius: BorderRadius.circular(5),
                        //   backgroundImage: FileImage(_profileImageFile),
                        //   radius: 40,
                        //   // child: Container(
                        //   //   width: MediaQuery.of(context).size.width - 370,
                        //   //   child: Image.file(
                        //   //     _imageFile,
                        //   //     fit: BoxFit.scaleDown,
                        //   //   ),
                        //   // ),
                        // ),

                        Container(
                          padding: new EdgeInsets.only(left:10.0),
                          child:GFAvatar(
                          backgroundImage: FileImage(_profileImageFile),
                            shape: GFAvatarShape.standard,
                            radius: 30,

                           ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[

                              Text('                                              Update logo',
                              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,   fontSize: 17,
                              ),
                              textAlign: TextAlign.left,

                            ),

                               FlatButton(
                                 child:Text('                                            Remove logo',
                              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,   fontSize: 17,
                              ),
                            ),
                                 onPressed: _clear,

                               ),
                            // FlatButton(
                            //   child: Text(' Update logo',
                            //     style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,   fontSize: 17,
                            //     ),
                            //     textAlign: TextAlign.left,
                            //   ),
                            //   onPressed: _clear,
                            // ),
                            // FlatButton(
                            //   child: Text(' Update logo',
                            //   style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,   fontSize: 17,
                            //   ),
                            //   textAlign: TextAlign.left,
                            // ),
                            //   // onPressed: _cropImage,
                            // ),
                          ],
                        ),
                      ],
                    )
                        : GestureDetector(
                      onTap: () {
                        _pickImage();
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.topLeft,
                            child: Image.asset(
                                  "assets/images/reslogo.png",
                                  width: 100,
                                  height: 50,
                                  // fit: BoxFit.cover,
                                ),
                              decoration: new BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                shape: BoxShape.circle,
                              ),
                              width: 100,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                          ],
                        ),
                      ),
                    ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: "Restaurant's name",
                      border: InputBorder.none,

                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 25,
                      ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                    style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),

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
                    },
                    decoration: InputDecoration(
                      hintText: "Restaurant's address",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                    style: TextStyle(color: Colors.black54),

                  ),
                ),

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
                  style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                ),

                //  Container(
                //     child: PinEntryTextField(
                //       showFieldAsBox: true,
                //       fields: 4,
                //     )
                // ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: Text('Capacity no.pre-covid',
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
                          contentPadding: EdgeInsets.only(left: 10, bottom: 30),
                        ),
                        style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),

                      )
                      ),
                    ]),

                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
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
                          contentPadding: EdgeInsets.only(left: 10, bottom: 30),
                        ),
                        style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),

                      )),
                    ]),
                SizedBox(
                  height: 1,
                ),
                Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Pictures',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,   fontSize: 20,

                          ),
                        ),
                      ),

                    ]),
                SizedBox(
                  height: 30,
                ),

                Column(

                  children: <Widget>[
                    FlatButton(
                      padding: const EdgeInsets.only(left: 150),
                      child: Icon(Icons.add,size: 50 ),
                      // onPressed: _pickImage,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 140),
                      child: Text('Tap to add images',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    // Text('Tap to add images',
                    //   style: TextStyle(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 390.0,
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0x00fbbb)),
                    ),
                    color: Colors.teal.withOpacity(0.7),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),

                    elevation: 0.0,

                    onPressed: () async {
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => Home()
                      //     )
                      // );
                    },
                    child: Text('                  Save Changes                 ',
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
  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
