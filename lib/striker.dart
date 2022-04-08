import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/striker2.dart';

class Striker extends StatefulWidget {
  const Striker({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Striker> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Main Page',
        home: Scaffold(
          body: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.pink.shade100])),
                child: Column(
                  children:[
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S-Mane.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: April 10, 1992\nname: Sadio Mane\nheight: 175 cm\nage: 29 years old\nnationality: Senegal\nshirt_number: 10")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S_Diaz.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: January 13, 1997\nname: Luis Diaz\nheight: 178 cm\nage: 25 years old\nnationality: Colombia\nshirt_number: 23")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S_Elliott.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: April 4, 2003\nname: Harvey Elliott\nheight: 170 cm\nage: 19 years old\nnationality: England\nshirt_number: 67")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Salah.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: June 15, 1992\nname: Mohamed Salah\nheight: 175 cm\nage: 29 years old\nnationality: Egypt\nshirt_number: 11")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S_Firmino.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: October 2, 1991\nname: Roberto Firmino\nheight: 181 cm\nage: 30 years old\nnationality: Brazil\nshirt_number: 9")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: InkWell(
                        child: Text('Next', style: TextStyle(fontSize: 20.0,color: Colors.purple.shade300),),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Striker2()
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                  //child: Image.asset("assets/images/G_Adrian.jpg"),
                ),

              )


          ),

        ));
  }
}