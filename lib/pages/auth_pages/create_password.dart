import 'package:flutter/material.dart';
import 'package:spotify/routes.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

 var eye = Icons.remove_red_eye;
 bool secure = true;
 String pass='';
 String under='Use at least 8 characters.';


class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Create account",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create a password",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
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
                      if(pass!=null&&pass.length>7){
                        under="";
                      }
                      else{
                        under="Use at least 8 characters.";
                      }
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
              SizedBox(height: 5),
              Text(under,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,

                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(onPressed:(){
                  if(pass.length>7){
                  Navigator.pushNamed(context, MyRoutes.userRoutes);
                  }
                },
                    child: Text("NEXT",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17
                      ),
                    )
                ),
              ),
            ],
          ),
        )
    );
  }
}
