import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
var eye = Icons.remove_red_eye;
bool secure = true;
String pass='';
var clr= Colors.grey[800];
String user='';

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Email or username",
           style: TextStyle(
             color: Colors.white70,
             fontSize: 26,
             fontWeight: FontWeight.w700
           ),
           ),
           TextFormField(
             style: TextStyle(
               color: Colors.white70,
             ),
             onChanged: (Val){
               setState(() {
                 user=Val;
               });
             },
             showCursor: true,
             cursorColor: Colors.white70,
             decoration: InputDecoration(
               border: InputBorder.none,
             ),
           ),
           Text("Password",
             style: TextStyle(
                 color: Colors.white70,
                 fontSize: 26,
                 fontWeight: FontWeight.w700
             ),
           ),
           Row(
               children:[
                 Flexible(
                   child: TextFormField(
                     style: TextStyle(
                       color: Colors.white70,
                     ),
                     showCursor: true,
                     cursorColor: Colors.white70,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                     ),
                     obscureText: secure,
                     onChanged: (val){
                       setState(() {
                         pass=val;
                       });
                     },
                   ),
                 ),
                 IconButton(onPressed: (){
                   if(eye==Icons.remove_red_eye) {
                     setState(() {
                       eye = Icons.remove_red_eye_outlined;
                       secure = false;
                     });
                   }
                   else {
                     setState(() {
                       eye = Icons.remove_red_eye;
                       secure=true;
                     });
                   }
                 },
                     icon: Icon(eye,
                       color: Colors.white70,
                     )
                 )
               ]
           ),
           Center(
             child: TextButton(onPressed: (){

             },
                 child: Text("NEXT",
                   style: TextStyle(
                     color: clr,
                   ),
                 )
             ),
           ),
         ],
       ),
    );
  }
}

