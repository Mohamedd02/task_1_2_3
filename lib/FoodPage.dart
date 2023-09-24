import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('FoodPage')),
      drawer: Drawer(),
      body:  SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 100,

                alignment: Alignment.center,
                child: const Text(
                  'Food Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),
                ),

              ),


            ]
        ),

      ),
    );
  }

}