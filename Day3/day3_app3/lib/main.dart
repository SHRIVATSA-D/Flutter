import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          children:  [
              CircleAvatar(
                  radius: 50, backgroundImage: AssetImage('images/Avatar.jpg')
              ),//ProfilePhoto
              Text(
                "Seema Deshpande",
                 style: TextStyle(
                   fontFamily: 'Courgette',
                   fontSize: 40,
                   color: Colors.white,
                   fontWeight: FontWeight.bold

                 )
              ),//username
              Text("Flutter Developer",
        style: TextStyle(
    fontFamily: 'IMFellDoublePica',
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.normal,
          letterSpacing: 1.5
    ),

              ),
              SizedBox(height: 20,
                  width: 2000,
                child: Divider(thickness: 2,
                color: Colors.white),),
              Card(//padding does not exist in Card
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(

                        Icons.email,
                        color: Colors.teal
                    ),
                    title: Text(
                        "seemashrivatsa@gmail.com",
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w500
                        ),
                    ),
              ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                   leading: Icon(
                     Icons.phone,
                     color: Colors.teal
                 ),

                  title:  Text(
                     "+91 2283891281",
                     style: TextStyle(
                       color: Colors.teal
                     ),
                   ),
                ),
              )
              ,//Role
             ] ,
        ),
            ),),
      ),
    );
  }
}


