import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_football/home.dart';

class Goal extends StatefulWidget {
  const Goal ({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<Goal> {

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
                        Image.asset("assets/images/G_Adrian.jpg",
                          width: 100,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: January 3, 1987\nname: Adrián San Miguel\nheight:190 cm\nage: 35 years old\nnationality: Spain\nshirt_number:13")
                      ],

                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/G_Alisson_Becker.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth:nOctober 2, 1992\nname: Alisson Becker\nheight: 191 cm\nage: 29 years old\nnationality: Brazil\nshirt_number:1")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/G_Caoimhin.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: November 23, 1998\nname: Caoimhin Kelleher\nheight: 188 cm\nage: 23 years old\nnationality: Ireland\nshirt_number:62")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/G_Loris_Karius.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: June 22, 1993\nname: Loris Karius\nheight: 189 cm\nage: 28 years old\nnationality: Germany\nshirt_number:22")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/G_Pitaluga.jpg",
                          width: 100.0,
                          height: 100.0,),
                        SizedBox(width: 20,),
                        Text("birth: December 20, 2002\nname: Marcelo Pitaluga\nheight: 191 cm\nage: 19 years old\nnationality: Brazilian, German\nshirt_number: 97")
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