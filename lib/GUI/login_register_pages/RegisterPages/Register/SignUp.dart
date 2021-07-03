import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foody/GUI/login_register_pages/RegisterPages/EmailVerifiedPage/emailverifiedpage.dart';

/*
 * @created By : Salim Mehdi
 * @Creation Date : 22/03/2021
 */

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  UserCredential userCredential;
  AnimationController controller;
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repasswordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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

          // All elements !!
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                // Text => Sign Up Text
                Text(
                  "Sign up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'ARLRDBD',
                      letterSpacing: 0,
                      fontWeight: FontWeight.w300),
                ),

                // All TextFromField
                Container(
                  margin: EdgeInsets.symmetric(vertical: 05),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(17.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TextFromField => Name
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ARLRDBD'),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.white70,
                                size: 24,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              labelText: "Name",
                              hintText: "Your name",
                              labelStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontFamily: 'ARLRDBD',
                                letterSpacing: 2,
                                //fontWeight: FontWeight.w300
                              )),
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(
                        height: 10,
                      ),

                      // TextFromField => Email
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ARLRDBD'),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email_outlined,
                                color: Colors.white70,
                                size: 24,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              labelText: "Email",
                              hintText: "Your email",
                              labelStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontFamily: 'ARLRDBD',
                                letterSpacing: 2,
                                //fontWeight: FontWeight.w300
                              )),
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(
                        height: 10,
                      ),

                      // TextFromField => Password
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ARLRDBD'),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.white70,
                                size: 24,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              labelText: "Password",
                              hintText: "Your password",
                              labelStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontFamily: 'ARLRDBD',
                                letterSpacing: 2,
                                //fontWeight: FontWeight.w300
                              )),
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(
                        height: 10,
                      ),

                      // TextFromField => re-enter Password
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _repasswordController,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ARLRDBD'),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.white70,
                                size: 24,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white54, width: 3),
                              ),
                              labelText: "Password",
                              hintText: "Your password again !",
                              labelStyle: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontFamily: 'ARLRDBD',
                                letterSpacing: 2,
                                //fontWeight: FontWeight.w300
                              )),
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                // TextButton => Register Button,
                TextButton(
                    onPressed: onPressRegister,
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(28, 73, 6, 1),
                      fixedSize: Size(160, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Register",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'ARLRDBD',
                            letterSpacing: 2,
                            //fontWeight: FontWeight.w300
                          ),
                        ),

                        //SizedBox : just for make spacing between elements
                        //class path : flutter_app/widgets/buildWidget.dart
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          textDirection: TextDirection.ltr,
                          size: 20,
                        )
                      ],
                    )),
              ],
            ),

            //SizedBox : just for make spacing between elements
            //class path : flutter_app/widgets/buildWidget.dart
            Expanded(
              child: SizedBox(height: 10),
            ),

            // TextButton => Login Button ( Login )
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("Login");
              },
              style: TextButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: Color.fromRGBO(158, 158, 158, 0),
                  fixedSize: Size(240, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  side: BorderSide(color: Colors.white, width: 1.5)),
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'ARLRDBD',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ])),
    );
  }

  void onPressRegister() async {
    if (_nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.length >= 8) {
      if (_passwordController.text == _repasswordController.text) {
        try {
          userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: _emailController.text,
                  password: _passwordController.text);

          User user = userCredential.user;
          Fluttertoast.showToast(
              msg: "${userCredential.user.email}",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white,
              textColor: Colors.black,
              fontSize: 13.0);
          if (!user.emailVerified) {
            await user.sendEmailVerification();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => emailVerifiedPage(user)));
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
            Fluttertoast.showToast(
                msg: "The password provided is too weak.}",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 13.0);
          } else if (e.code == 'email-already-in-use') {
            print('');
            Fluttertoast.showToast(
                msg: "The account already exists for that email.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 13.0);
          }
        } catch (e) {
          print(e);
        }
      } else {
        Fluttertoast.showToast(
            msg: "Password not matches",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 13.0);
        _repasswordController.clear();
      }
    } else if (_nameController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Name can not be empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 13.0);
      _nameController.clear();
    } else if (_emailController.text.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailController.text)) {
      Fluttertoast.showToast(
          msg: "Email can not be empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 13.0);
      _emailController.clear();
    } else if (_passwordController.text.length < 8 ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailController.text)) {
      Fluttertoast.showToast(
          msg: "Password your password is weak",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 13.0);
      _passwordController.clear();
    }
  }
}
