import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/home.dart';

class Mid2 extends StatefulWidget {
  const Mid2({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Mid2> {

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
                        Image.asset("assets/images/M_Milner.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: January 4, 1986\nname: James Milner\nheight: 175 cm\nage: 36 years old\nnationality: England\nshirt_number: 7")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/M_Thiago.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: April 11, 1991\nname: Thiago Alcantara\nheight: 174 cm\nage: 31 years old\nnationality: Spain\nshirt_number: 6")
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