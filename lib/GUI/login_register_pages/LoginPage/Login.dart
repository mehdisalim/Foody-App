import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foody/Code/DataBase/login/loginDatabase.dart';

/**
 * @created By : Salim Mehdi
 * @Creation Date : 20/03/2021
 */

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  TextEditingController _emailController=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(

          /*
          // !! You acn use it if you want !!
          height:double.infinity,
          width: double.infinity,
          */

            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bulb2.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black45, BlendMode.darken)),
            ),
            alignment: Alignment.center,

            // All elements !!
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [

              // Padding => Image => Logo
              Padding(
                padding: EdgeInsets.fromLTRB(0, 90, 0, 40),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.high,
                  width: 200,
                ),
              ),

              //SizedBox : just for make spacing between elements
              Expanded(child: SizedBox(height:40)),

              // Card
              Column(
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text => Login Text
                  Text(
                    "Login",
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
                    alignment: Alignment.center,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 05),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // TextFromField => Email
                        Container(
                          width: 200,
                          alignment: Alignment.center,
                          child: TextFormField(
                            controller: _emailController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'ARLRDBD'
                            ),
                            decoration: InputDecoration(
                                icon: Icon(Icons.email_outlined ,color: Colors.white70,size: 24,),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                labelText: "Email",
                                hintText: "Your Email",
                                labelStyle: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20,
                                  fontFamily: 'ARLRDBD',
                                  letterSpacing: 2,
                                  //fontWeight: FontWeight.w300
                                )
                            ),
                          ),
                        ),

                        //SizedBox : just for make spacing between elements
                        SizedBox(height: 10),

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
                                fontFamily: 'ARLRDBD'
                            ),
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock_outline ,color: Colors.white70,size: 24,),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white54,width: 3),
                                ),
                                labelText: "Password",
                                hintText: "Your password",
                                labelStyle: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20,
                                  fontFamily: 'ARLRDBD',
                                  letterSpacing: 2,
                                  //fontWeight: FontWeight.w300
                                )
                            ),
                          ),
                        ),

                        // TextButton => I forget PASSWORD
                        TextButton(
                          onPressed: () => print("Hello Word"),
                          child: Text(
                            "I forget Password",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'ARLRDBD',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.white70),
                          ),
                        )
                      ],
                    ),
                  ),

                  // TextButton => Login Button ( Login )
                  TextButton(
                      onPressed: (){
                        new loginDatabase().logintoDB(
                            _emailController.text.trim(),
                            _passwordController.text.trim());

                        Navigator.of(context).pushNamed("Home");

                      },
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
                            "Login",
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
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            textDirection: TextDirection.ltr,
                            size: 20,
                          )
                        ],
                      )
                  ),

                  // SizedBox : just for make spacing between elements
                  SizedBox(height: 40, ),

                  // Row => ----------- OR --------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    children: [
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 0.77),
                        borderOnForeground: true,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: // SizedBox : just for make spacing between elements
                        SizedBox(height: 01, width:100),
                      ),
                      Material(
                        type: MaterialType.transparency,
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.77),
                            fontFamily: "ARLRDBD.TTF",
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 0.77),
                        borderOnForeground: true,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: // SizedBox : just for make spacing between elements
                        SizedBox(height: 1,width: 100,),
                      )
                    ],
                  ),

                  // SizedBox : just for make spacing between elements
                  SizedBox(height: 20,),

                  // Row => 3 Floating Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      // Floating Button => Google Button
                      FloatingActionButton(
                        onPressed: ()=>print('Floating Action Button 1'),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 00),
                        child: Image(
                          width: 44,
                          height: 44,
                          colorBlendMode: BlendMode.darken,
                          image: AssetImage("assets/images/goog.png"),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(width: 40),

                      // Floating Button => Facebook Button
                      FloatingActionButton(
                        onPressed: ()=>print('Floating Action Button 2'),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 00),
                        child: Image(
                          width: 44,
                          height: 44,
                          image: AssetImage("assets/images/fb.png"),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),

                      //SizedBox : just for make spacing between elements
                      SizedBox(width: 40),

                      // Floating Button => LinkedIn Button
                      FloatingActionButton(
                        onPressed: ()=>print('Floating Action Button 3'),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 00),
                        child: Image(
                          width: 44,
                          height: 44,
                          image: AssetImage("assets/images/lin.png"),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // SizedBox : just for make spacing between elements
              Expanded(
                child: SizedBox(
                  height: 10,
                ),
              ),

              // TextButton => Sign Up Button ( Register )
              TextButton(
                onPressed:(){Navigator.of(context).pushNamed("SignUp");},
                style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: Color.fromRGBO(158, 158, 158, 0),
                    fixedSize: Size(240, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    ),
                    side: BorderSide(color: Colors.white, width: 1.5)
                ),
                child: Text(
                  "Create account",
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
            ])
      ),
    );
  }

}
