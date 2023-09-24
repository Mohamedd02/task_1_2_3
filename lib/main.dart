import 'package:flutter/material.dart';
import 'package:project01/HomeScreen.dart';
import 'package:project01/IdeaPage.dart';
import 'package:project01/Test1.dart';
import 'package:project01/task1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2() ,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //appBar: AppBar(),
        drawer: Drawer(),
        body: SafeArea(
          child: Container(


            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'welcome Back',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Image.asset(
                  'images/1.jpeg',
                ),

                const MyCont(
                  textk: 'Get Start',
                  widthk: 200,

                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCont(textk:'Signup' , widthk: 100),
                    SizedBox(
                      width: 70,

                    ),
                    MyCont(textk:'Login' , widthk: 100),
                  ],

                ),

              ],
            ),
          ),
        ));
  }
}

class MyCont extends StatelessWidget {
  final String textk;
  final double widthk;

  const MyCont({super.key, required this.textk, required this.widthk});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthk,
      height: 70,
      color: Colors.deepPurple,
      alignment: Alignment.center,
      child: Text(
        textk,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

}







class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      //appBar: AppBar(),
      drawer: Drawer(),
      body: SafeArea(


        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              width: 10,
              height: 50,

            ),

            Text(
              'Chose Activity',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,

              ),
            ),
            SizedBox(
              width: 10,
              height: 30,

            ),




            MyCont2(
              textk: 'Idea',
              widthk: 350,

            ),

            SizedBox(
              width: 100,
              height: 30,
            ),

            MyCont2(textk:'Food' , widthk: 350),
            SizedBox(
              width: 100,
              height: 30,
            ),
            MyCont2(

                textk:'Work' , widthk: 350),
            SizedBox(
              width: 100,
              height: 30,
            ),
            MyCont2(textk:'Sport' , widthk: 350),
            SizedBox(
              width: 100,
              height: 30,
            ),
            MyCont2(textk:'Music' , widthk: 350),



          ],
        ),
      ),
    );
  }
}


class MyCont2 extends StatelessWidget {
  final String textk;
  final double widthk;

  const MyCont2({super.key, required this.textk, required this.widthk});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthk,
      height: 100,
      color: Colors.grey[300],
      alignment: Alignment.center,
      child: Text(
        textk,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

}