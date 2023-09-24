
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);
  List<int> myList = [1,2,3,4,5,6,7,8,9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list Screen'),

      ),
      body: ListView.builder(

        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    index.toString(),

                  ),const Text(
                    '>>>>>>>>>>>'

                  ),
                  Text(
                    myList[index].toString(),
                    //      [5]         = 4
                    // بنعد من اول ال list مش من 0
                  ),
                ],
              ),

            ],

          );
        },

      )
            
          );







  }
}



/*

( List view Belder )

return Scaffold(
appBar: AppBar(
title: const Text('list Screen'),

),
body: ListView.builder(

itemCount: 100,
itemBuilder: (context, index) {
return Column(
children: [
Text(
index.toString(),

)

],

);
},

)

);

-------------------------------




List Of Data ->>>>>>>>>>>>>
                            List<int> myList = [1,2,3,4,5,6,7,8,9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list Screen'),

      ),
      body: ListView.builder(

        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    index.toString(),

                  ),const Text(
                    '>>>>>>>>>>>'

                  ),
                  Text(
                    myList[index].toString(),
                    //      [5]         = 4
                    // بنعد من اول ال list مش من 0
                  ),
                ],
              ),

            ],

          );
        },

      )

          );

---------------------------------------

                           Bottn

 ElevatedButton(

            style: ElevatedButton.styleFrom(
              minimumSize: Size(70, 40),
              backgroundColor: Colors.grey[300],

            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)

              );
            },
            child: const Text(
                'ReFresh',
              style: TextStyle(

               color: Colors.black,
                fontWeight: FontWeight.bold,

              ),
            ),

        ),


*/
