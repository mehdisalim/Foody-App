import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class allCategory extends StatefulWidget {
  @override
  _allCategoryState createState() => _allCategoryState();
}

class _allCategoryState extends State<allCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/menuicon.png",
            fit: BoxFit.contain,
            width: 30,height: 13,),
          ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "ARLRDBD",
            color: Colors.black,
          ),

        ),
      ),
      body: Container(
        child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                width: 370,
                height: 45,
                decoration: new BoxDecoration(
                  color: Color.fromRGBO(233, 233, 233, 1),
                    borderRadius: new BorderRadius.circular(13),
                ),
                child: TextField(
                  controller: new TextEditingController(),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'ARLRDBD'),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    icon: Icon(Icons.search,color: Colors.black87,),
                    hintText: "Search",

                  ),
                ),

              ),

              SizedBox(
                height: 15,
              ),

              Row(
                children: [

                  Container(
                    width: 22,
                    height: 50,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/categoryicon.png",fit: BoxFit.cover,),
                  ),

                  SizedBox(
                    width: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        width: 63,
                        height: 63,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(253, 123, 0, 1),
                          radius: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/icons/allicon_white.png",
                                fit: BoxFit.cover,
                                height: 26,
                                width: 26,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "All",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'ARLRDBD',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        width: 57,
                        height: 57,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(248, 209, 172, 1),
                          radius: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/icons/mealicon_black.png",
                                fit: BoxFit.cover,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Meals",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'ARLRDBD',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        width: 63,
                        height: 63,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(248, 209, 172, 1),
                          radius: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/icons/foodicon_black.png",
                                fit: BoxFit.cover,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Foods",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'ARLRDBD',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        width: 63,
                        height: 63,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(248, 209, 172, 1),
                          radius: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/icons/drinksicon_black.png",
                                fit: BoxFit.cover,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Drinks",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'ARLRDBD',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: 51,
                    height: 220,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/recommendedlineicon.png",fit: BoxFit.cover,),
                  ),

                 Expanded(child:  SizedBox(
                   width: 15,
                 ),),

                  Stack(
                    children: [
                      Container(
                        width: 342,
                        height: 227,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/promoimage.png",
                          fit: BoxFit.fill,
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  )

                ],
              ),
            ],
        ),
      )
    );
  }
}
