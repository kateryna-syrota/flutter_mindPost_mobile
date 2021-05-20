
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mindpost/ui/pages/login_page/login_page.dart';
import 'package:flutter_mindpost/ui/pages/notes_page/notes_page.dart';
import 'package:flutter_mindpost/ui/pages/registration_page/registartion_page.dart';
import 'package:flutter_mindpost/ui/pages/splash_page/scale_transition.dart';
import 'package:flutter_mindpost/ui/pages/splash_page/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

SharedPreferences sharedPreferences;

Route routes(RouteSettings routeSettings){
  if(routeSettings.name == '/') {
    return MaterialPageRoute(builder: (context) {
      return SplashScreen();
    });
  } else if(routeSettings.name == '/home_page') {
    var argument = routeSettings.arguments;
    return MaterialPageRoute(builder: (context) => argument == null? LoginPage():NotesPage());
  } else if(routeSettings.name== '/login') {
    return ScaleRoute(
      page: NotesPage()
    );
  } else if(routeSettings.name == '/signUp') {
    return ScaleRoute(
      page: RegistrationPage()
    );
  } else if(routeSettings.name == '/signIn') {
    return ScaleRoute(
        page: LoginPage()
    );
  }
  return null;
}