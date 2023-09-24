import 'package:flutter/material.dart';
import 'package:project01/main.dart';

import 'HomeScreen.dart';


class HomePage2 extends StatelessWidget {
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
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Image.asset(
                  'images/1.jpeg',
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

                  },
                  child: const MyCont(
                    textk: 'Get Start',
                    widthk: 200,

                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    MyCont(

                        textk: 'Signup', widthk: 130),

                    SizedBox(
                      width: 70,

                    ),
                    MyCont(textk: 'Login', widthk: 130),
                  ],

                ),

              ],
            ),
          ),
        )
    );
  }
}



