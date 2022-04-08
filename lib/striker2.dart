import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/home.dart';

class Striker2 extends StatefulWidget {
  const Striker2({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Striker2> {

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
                        Image.asset("assets/images/S_Jota.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: December 4, 1996\nname: Diogo Jota\nheight: 178 cm\nage: 26 years old\nnationality: Portugal\nshirt_number: 20")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S_Minamino.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: January 16, 1995\nname: Takumi Minamino\nheight: 174 cm\nage: 27 years old\nnationality: Japan\nshirt_number: 18")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/S_Origi.jpeg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: April 18, 1995\nname: Divock Origi\nheight: 185 cm\nage: 26 years old\nnationality: Belgium\nshirt_number: 27")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: InkWell(
                        child: Text('Home', style: TextStyle(fontSize: 20.0,color: Colors.purple.shade300),),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()
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