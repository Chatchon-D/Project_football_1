import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/mid2.dart';

class Mid extends StatefulWidget {
  const Mid({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Mid> {

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
                        Image.asset("assets/images/M_Chamberlain.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: August 15, 1993\nname: Alex Oxlade-Chamberlain\nheight: 180 cm\nage: 28 years old\nnationality: England\nshirt_number: 15")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/M_Fabinho.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: October 23, 1993\nname: Fábio Henrique Tavares\nheight: 188 cm\nage: 28 years old\nnationality: Brazil\nshirt_number: 3")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/M_Henderson.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: 17 June 1990\nname: Jordan Henderson\nheight: 182 cm\nage: 31 years old\nnationality: England\nshirt_number: 64")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/M_Jones.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: January 30, 2001\nname: Curtis Jones\nheight: 185 cm\nage: 21 years old\nnationality: England\nshirt_number:17")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/M_Keita.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: February 10, 1995\nname: Naby Keita\nheight: 172 cm\nage: 27 years old\nnationality: Guinea\nshirt_number: 8")
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
                                builder: (context) => const Mid2()
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