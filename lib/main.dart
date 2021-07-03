import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foody/GUI/login_register_pages/FirstPage.dart';
import 'package:foody/GUI/login_register_pages/RegisterPages/UserProfilePage/userProfileInfo.dart';
import 'package:foody/GUI/main_page/Home/allcategory/all.dart';
import 'GUI/login_register_pages/LoginPage/Login.dart';
import 'GUI/login_register_pages/RegisterPages/Register/SignUp.dart';

/**
 * @created By : Salim Mehdi
 * @Creation Date : 17/03/2021
 */

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      'Home': (BuildContext context) => firstPage(),
      'Login': (BuildContext context) => Login(),
      'SignUp': (BuildContext centext) => SignUp(),
    },
    home: allCategory(),
  ));
}
