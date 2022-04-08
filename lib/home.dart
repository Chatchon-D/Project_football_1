import 'package:flutter/material.dart';
import 'package:project_football/defen.dart';
import 'package:project_football/goall.dart';
import 'package:project_football/midd.dart';
import 'package:project_football/striker.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/back.png',
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50.0),
                  Text('Lineup liverpool', style: TextStyle(fontSize: 80.0,color: Colors.red.shade300)),

                  Container(
                    margin: EdgeInsets.all(25),
                    child: InkWell(
                      child: Text('GOALKEEPERS', style: TextStyle(fontSize: 50.0,color: Colors.purple.shade300),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Goal()
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: InkWell(
                      child: Text('MIDFIELDERS', style: TextStyle(fontSize: 50.0,color: Colors.black),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mid()
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: InkWell(
                      child: Text('FORWARDS', style: TextStyle(fontSize: 50.0,color: Colors.redAccent.shade200),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Striker()
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: InkWell(
                      child: Text('DEFENDERS', style: TextStyle(fontSize: 50.0,color: Colors.blueAccent.shade200),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Defender()
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}