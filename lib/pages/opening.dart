import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/routes.dart';

class Opening extends StatefulWidget {

  @override
  State<Opening> createState() => _OpenState();
}
class _OpenState extends State<Opening> {
  @override
  void changePage()async{
   await Future.delayed(Duration(seconds: 2));
     Navigator.pushReplacementNamed(context, MyRoutes.appRoutes);
  }

  Widget build(BuildContext context)  {
   return Scaffold(
     backgroundColor: Colors.black,
     body: SafeArea(
     child: Container(
       decoration: BoxDecoration(
       image: DecorationImage(
           image: AssetImage("assets/spotify_logo.png")
       ),
       ),
     )
     ),
   );
  }
  @override
  void initState(){
    changePage();
  }
}
