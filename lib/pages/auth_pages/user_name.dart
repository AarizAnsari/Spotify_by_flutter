import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _userState createState() => _userState();
}
  String username='';
  var colr= Colors.grey[500];

class _userState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Create account",
          style: TextStyle(
            color: Colors.white70,
          ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What's your name?",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white70,
                ),
                onChanged: (Val){
                  setState(() {
                    username=Val;
                    if(username.length>=1){
                      colr=Colors.green[900];
                    }
                    else{
                      colr= Colors.grey[500];
                    }
                  });
                },
                showCursor: true,
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              SizedBox(height: 5),
              Text("This appears on your Spotify profile.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,

                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(onPressed:() {
                },
                  child: Text("Create",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color?>(colr),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90)
                        )
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(140),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
