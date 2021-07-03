import 'package:flutter/material.dart';

/**
 * @created By : Salim Mehdi
 * @Creation Date : 20/03/2021
 */

class firstPage extends StatefulWidget{

  @override
  _firstPageState createState()=>_firstPageState();
}

class _firstPageState extends State<firstPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      /*
          !! You acn use it if you want !!
        height: double.infinity,
        width: double.infinity,
      */
      decoration: new BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/images/bulb1.jpg"
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
        ),

      ),
      alignment: Alignment.center,

      // All elements !!
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          // Padding => Image => Logo
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 40),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
              width: 200,
            ),
          ),

          //SizedBox : just for make spacing between elements
          SizedBox(height: 200,),

          // TextButton => Login Button ( Sign in )
          TextButton(
            onPressed:(){Navigator.of(context).pushNamed('Login');},
            style: TextButton.styleFrom(
              backgroundColor: Color.fromRGBO(158, 158, 158, 0.57),
              fixedSize: Size(240, 44),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),


            ),
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontFamily: 'ARLRDBD',
                letterSpacing: 2,
                //fontWeight: FontWeight.w300
              ),
            ),
          ),

          //SizedBox : just for make spacing between elements
          //class path : flutter_app/widgets/buildWidget.dart
          SizedBox(height:30,),

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

          //SizedBox : just for make spacing between elements
          //class path : flutter_app/widgets/buildWidget.dart
          SizedBox(height: 20,),

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
                SizedBox(height: 1,width: 100),

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
                SizedBox(height: 1,width: 100),

              )
            ],
          ),

          //SizedBox : just for make spacing between elements
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
              SizedBox(width:40),

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
              SizedBox(width:40),

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
          )
        ],
      ),
    );
  }

}
