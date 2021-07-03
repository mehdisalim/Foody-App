import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class emailVerifiedPage extends StatefulWidget {
  User user;

  emailVerifiedPage(this.user);

  @override
  _emailVerifiedPageState createState() => _emailVerifiedPageState();
}

class _emailVerifiedPageState extends State<emailVerifiedPage> {
  Color iconColor = Colors.green;
  Color buttonColor = Colors.white;

  @override
  void initState() {
    super.initState();
    iconColor = Color.fromRGBO(190, 190, 190, 0.50);
    buttonColor = Colors.grey;
    widget.user.reload();

    print(widget.user.emailVerified);

    checkEmailVerified();
  }

  void checkEmailVerified() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
            /*
            !! You acn use it if you want !!
          height: double.infinity,
          width: double.infinity,
        */
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bulb3.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken)),
            ),
            alignment: Alignment.center,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              // Padding => Image => Logo
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 40),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.high,
                  width: 200,
                ),
              ),

              //SizedBox : just for make spacing between elements
              Expanded(
                  child: SizedBox(
                height: 40,
              )),

              Column(
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Verified your Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.check_circle,
                        size: 65,
                        color: iconColor,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 260,
                    child: Text(
                      "Apparently We Had Reached A Great Height In The "
                      "Atmosphere, For The Sky Was A Dead Black, And The"
                      "Stars Had Ceased To Twinkle. By The Same Illusion"
                      "Which Lifts The Horizon Of The Sea To The Level Of The"
                      "Spectator On A Hillside, The Sable Cloud Beneath Was"
                      "Dished Out, And The Car Seemed To Float In The",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Roboto-Medium",
                        color: Colors.grey.shade500,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // TextButton => Login Button ( Login )   (){Navigator.of(context).pushNamed("Login");}
              TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Color.fromRGBO(158, 158, 158, 0),
                    fixedSize: Size(240, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    ),
                    side: BorderSide(color: buttonColor, width: 1.5)),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20,
                    fontFamily: 'ARLRDBD',
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topLeft,
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "If you didn't request any code !! click ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "ARLRDBD",
                        color: Colors.grey.shade500,
                        fontSize: 10,
                      ),
                    ),
                    IconButton(
                        onPressed: () async {
                          await widget.user.sendEmailVerification();
                        },
                        icon: Icon(
                          Icons.refresh,
                          size: 14,
                          color: Colors.grey.shade500,
                        ))
                  ],
                ),
              ),

              Expanded(
                child: SizedBox(
                  height: 10,
                ),
              )

            ])
        )
    );
  }
}
