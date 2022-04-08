import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/defen2.dart';
import 'package:project_football/home.dart';


class Defender extends StatefulWidget {
  const Defender({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Defender> {

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
                        Image.asset("assets/images/D_Gomez.jpg",
                          width: 100,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: May 23, 1997\nname: Joe Gomez\nheight: 188 cm\nage: 24 years old\nnationality: England\nshirt_number: 12")
                      ],

                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/D_Konate.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: May 25, 1999\nname: Ibrahima Konate\nheight: 194 cm\nage: 22 years old\nnationality: Paris, France\nshirt_number:5")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/D_Matip.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: August 8, 1991\nname: Joel Matip\nheight: 195 cm\nage: 30 years old\nnationality: Cameroon\nshirt_number: 32")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/D_Robertson.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: March 11, 1994\nname: Andy Robertson\nheight: 178 cm\nage: 28 years old\nnationality: Scotland\nshirt_number:26")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/D_Trent.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: October 7, 1998\nname: Trent Alexander-Arnold\nheight: 175 cm\nage: 23 years old\nnationality: England\nshirt_number: 66")
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
                                builder: (context) => const Defender2()
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