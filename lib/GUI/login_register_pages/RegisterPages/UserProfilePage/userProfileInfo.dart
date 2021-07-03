import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:date_format/date_format.dart';

class userProfile extends StatefulWidget {
  @override
  _userProfileState createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "ARLRDBD",
              letterSpacing: 3),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 123, 0, 1),
        toolbarHeight: 55,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Image',
                    style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      fontFamily: "ARLRDBD",
                      letterSpacing: 3,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 120,
                    height: 120,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Color.fromRGBO(123, 123, 123, 0.5),
                            size: 50,
                          ),
                          iconSize: 50,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 160,
                    height: 40,
                    child: TextFormField(
                      controller: new TextEditingController(),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'ARLRDBD'),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Color.fromRGBO(253, 123, 0, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 123, 0, 1),
                                width: 2),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(253, 123, 0, 1))),
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 2,
                            //fontWeight: FontWeight.w300
                          )),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    width: 20,
                  )),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 160,
                    height: 40,
                    child: TextFormField(
                      controller: new TextEditingController(),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'ARLRDBD'),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person_outline,
                            color: Color.fromRGBO(253, 123, 0, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 123, 0, 1),
                                width: 2),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(253, 123, 0, 1))),
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 2,
                            //fontWeight: FontWeight.w300
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 40,
                    width: 240,
                    child: TextField(
                      controller: new TextEditingController(),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'ARLRDBD'),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone,
                            color: Color.fromRGBO(253, 123, 0, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 123, 0, 1),
                                width: 2),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(253, 123, 0, 1))),
                          labelText: "Number Phone",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 2,
                            //fontWeight: FontWeight.w300
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 140,
                    height: 40,
                    child: TextFormField(
                      onChanged: null,
                      readOnly: true,
                      controller: new TextEditingController(),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          color: Colors.black, fontSize: 16, fontFamily: 'ARLRDBD'),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.calendar_today,
                            color: Color.fromRGBO(253, 123, 0, 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(253, 123, 0, 1), width: 2),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color.fromRGBO(253, 123, 0, 1))),
                          labelText: "Birthday",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 2,
                            //fontWeight: FontWeight.w300
                          )),
                    ),
                  ),
                  Expanded(child: SizedBox(width: 20,),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gender",style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'ARLRDBD',),),
                      Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) => false,),
                              Text("Male",style: TextStyle(fontSize: 14),)
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) => false,),
                              Text("Female",style: TextStyle(fontSize: 14),)
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'ARLRDBD',
                              color: Colors.black
                          ),
                        )

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 375,
                      height: 196,
                      color: Colors.blue,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.grey.shade600,),
                        Expanded(
                          child: Text(
                            "SELFMADE Agency, Avenue Mohamed El Fassi Rue 914 "
                                "immeuble 515 3ème étage N°8، أگادير 80000",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto-Medium',
                                color: Colors.grey.shade600
                            ),
                          ),
                        )

                      ],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [

                          TextButton(
                            onPressed:(){},
                            style: TextButton.styleFrom(
                              elevation: 5,
                                shadowColor: Colors.black,
                                alignment: Alignment.center,
                                backgroundColor: Colors.white,
                                fixedSize: Size(145, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                ),
                                side: BorderSide(color: Color.fromRGBO(253, 123, 0, 1), width: 1.5)
                            ),
                            child: Text(
                              "Select your location",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'ARLRDBD',
                              ),
                            ),
                          ),


                          Expanded(child: SizedBox(width:20,),),

                          TextButton(
                            onPressed:(){},
                            style: TextButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Color.fromRGBO(253, 123, 0, 1),
                              fixedSize: Size(145, 30),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              ),


                            ),
                            child: Text(
                              "Use GPS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'ARLRDBD',
                                letterSpacing: 2,
                                //fontWeight: FontWeight.w300
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height:30,),

                    TextButton(
                      onPressed:(){},
                      style: TextButton.styleFrom(
                          shadowColor: Colors.black,
                          alignment: Alignment.center,
                          backgroundColor: Colors.white,
                          fixedSize: Size(277, 46),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          ),
                          side: BorderSide(color: Colors.black, width: 1.5)
                      ),
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'ARLRDBD',
                        ),
                      ),
                    ),
                    SizedBox(height:6,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
