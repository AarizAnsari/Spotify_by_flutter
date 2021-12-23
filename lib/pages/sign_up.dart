import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo_named.png",
                  scale: 4,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text("Millions of songs.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text("Free on Spotify.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              TextButton(onPressed:() {
                  Navigator.pushNamed(context, MyRoutes.emailRoutes);
              },
                  child: Text("Sign up free",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color?>(Colors.green[900]),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90)
                  )
                ),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size.fromWidth(220),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextButton.icon(onPressed: (){
                              Navigator.pushNamed(context, MyRoutes.phoneRoutes);
                            },
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.zero,
                                  ),
                                ),
                                icon: Icon(
                                  Icons.smartphone,
                                  color: Colors.white,
                                ),
                                label: Text("Continue with phone number",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/google.png"),
                              maxRadius: 12,
                            ),
                            SizedBox(width: 20),
                            Text("Continue with Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/facebook.png"),
                              maxRadius: 12,
                            ),
                            SizedBox(width: 20,),
                            Text("Continue with facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, MyRoutes.loginRoutes);
              },
                  child: Text("Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  )
              )
            ],
          ),
        )
    );
  }
}
