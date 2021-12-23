import 'package:flutter/material.dart';
import 'package:spotify/app_screens/Main_home_screen.dart';
import 'package:spotify/pages/auth_pages/create_password.dart';
import 'package:spotify/pages/auth_pages/email_form.dart';
import 'package:spotify/pages/auth_pages/logi_in.dart';
import 'package:spotify/pages/auth_pages/phone.dart';
import 'package:spotify/pages/auth_pages/user_name.dart';
import 'package:spotify/pages/opening.dart';
import 'package:spotify/pages/sign_up.dart';
import 'package:spotify/routes.dart';
import 'package:spotify/app_screens/app_search_screen.dart';

void main(){
runApp(Spotify());
}

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  _SpotifyState createState() => _SpotifyState();
}


class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: "/",
      routes: {
  "/": (context) => Opening(),
        MyRoutes.signupRoutes: (context) => SignUp(),
        MyRoutes.emailRoutes: (context) => email(),
        MyRoutes.phoneRoutes: (context) => PhoneNo(),
        MyRoutes.passRoutes: (context) => Password(),
        MyRoutes.userRoutes: (context) => User(),
        MyRoutes.loginRoutes: (context) => Login(),
        MyRoutes.appRoutes: (context) => Home(),
        MyRoutes.search: (context) => Search(),
      }
    );
  }
}
