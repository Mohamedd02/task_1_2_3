import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:project01/FoodPage.dart';
import 'package:project01/IdeaPage.dart';
import 'package:project01/MusicPage.dart';
import 'package:project01/SportPage.dart';
import 'package:project01/Task_3.dart';
import 'package:project01/WorkPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('HomePage',


      )

      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
           Container(
             width: double.infinity,
             height: 50,
             alignment: Alignment.bottomLeft,
             child: const Text(
               'Choose Activity',

               style:  TextStyle(

                 fontWeight: FontWeight.bold,
                 fontSize: 25,

               ),
             ),

           ),


            InkWell(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const IdeaPage()));

              },
              child: Container(

                margin: const EdgeInsets.only( top: 50),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    20,

                  ),
                    border: Border.all(color: Colors.black , width: 3),
                ),
                width: 350,
                height: 80,

                alignment: Alignment.center,

                child: const Text(
                  'Idea',
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 10,

            ),
            InkWell(
              onTap: (){
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FoodPage()));
                
              },
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    20,

                  ),
                    border: Border.all(color: Colors.black , width: 3),
                ),

                width: 350,
                height: 80,

                alignment: Alignment.center,
                child: const Text(
                  'Food',
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),

                ),

              ),
            ),
            SizedBox(
              height: 10,

            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const WorkPage()));

              },
              child: Container(



                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    20,

                  ),
                    border: Border.all(color: Colors.black , width: 3),
                ),
                width: 350,
                height: 80,
                alignment: Alignment.center,
                child: const Text(
                  'Work',
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),

                ),
              ),
            ),

            const SizedBox(
              height: 10,

            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SportPage()));

              },
              child: Container(



                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    20,


                  ),
                    border: Border.all(color: Colors.black , width: 3),
                ),
                width: 350,
                height: 80,
                alignment: Alignment.center,
                child: const Text(
                  'Sport',
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 10,

            ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MusicPage()));

          },
          child: Container(




            decoration: BoxDecoration(
              color: Colors.grey[300],

              borderRadius: BorderRadius.circular(
                20,

              ),
              border: Border.all(color: Colors.black , width: 3),
            ),

            width: 350,
            height: 80,
            alignment: Alignment.center,

            child:

             const Text(
              'Music',
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,

                fontSize: 18,
              ),

            ),



          ),


        ),
          const SizedBox(
            height: 50,

          ),
        ElevatedButton(



            style: ElevatedButton.styleFrom(
              minimumSize: Size(70, 40),
              backgroundColor: Colors.white,


            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ListScreen(),)

              );
            },


            child: const Text(
                'Task 3',
              style: TextStyle(

               color: Colors.black,
                fontWeight: FontWeight.bold,

              ),
            ),

        ),

            Container(



            margin: const EdgeInsets.only(left: 300),

              child:
            const Icon(

              size: 76,
              color: Colors.deepPurple,

              Icons.add_box_rounded,
            ),
            ),
        ],
        ),
      ),
    );
  }
}


