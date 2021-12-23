import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:spotify/routes.dart';

class email extends StatefulWidget {

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
   String user_email='';
   String warn="You'll need to confirm this email later";
   bool isok=false;

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
            Text("What's your email?",
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
                setState(() => user_email=Val );
                if(EmailValidator.validate(user_email)==false){
                  setState(() {
                    warn="This email is invalid. Make sure it's written like \nexample@email.com";
                  });
                }
                if(EmailValidator.validate(user_email)==true){
                  setState(() {
                    warn="You'll need to confirm this email later";
                    isok=true;
                  });
                }

              },
              showCursor: true,
              cursorColor: Colors.white70,
              decoration: InputDecoration(
                border: InputBorder.none,
                ),
              ),
            Text(warn,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,

              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(onPressed: (){
                if(isok==true){
                  Navigator.pushNamed(context, MyRoutes.passRoutes);
                }
              },
                  child: Text("NEXT",
              style: TextStyle(
                color: Colors.white70,
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
