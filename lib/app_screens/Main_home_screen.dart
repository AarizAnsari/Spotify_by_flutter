import 'package:flutter/material.dart';
import 'package:spotify/app_screens/app_home_screen.dart';
import 'package:spotify/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AppHome(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: null,
                icon: Icon(Icons.home,
                color: Colors.white70,
                ),
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.search);
              },
              icon: Icon(Icons.search,
                color: Colors.white70,
              ),
            ),
            IconButton(onPressed: null,
              icon: Icon(Icons.line_weight_rounded,
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
