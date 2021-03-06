import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pwd_rojggar/login.dart';


void main() {
  runApp(MyApp());
}
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
         Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Sign Up',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              )
              
      );
    );
  }
}