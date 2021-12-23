import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:spotify/routes.dart';

class PhoneNo extends StatefulWidget {
  const PhoneNo({Key? key}) : super(key: key);

  @override
  State<PhoneNo> createState() => _PhoneNoState();
}
  String phNo='';
  var clr= Colors.grey[800];

class _PhoneNoState extends State<PhoneNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter phone number",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("+91",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17,
                  ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    color: Colors.white70,
                    width: 1,
                    height: 50,
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                      onChanged: (Val){
                         setState(() {
                           phNo=Val;
                           if(phNo.length>=1){
                             clr= Colors.white54;
                           }
                           else{
                             clr= Colors.grey[800];
                           }
                         });
                      },
                      showCursor: true,
                      cursorColor: Colors.white70,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone number",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ) ,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("We'll send you a code by SMS to confirm your phone \nnumber.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,

                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(onPressed: (){
                  if(phNo.length>=10){
                    Navigator.pushNamed(context, MyRoutes.passRoutes);
                  }
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
        )
    );
  }
}
