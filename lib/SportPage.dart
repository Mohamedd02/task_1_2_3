import 'package:flutter/material.dart';


class SportPage extends StatefulWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('SportPage')),
      drawer: const Drawer(),
      body:   SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: double.infinity,
                height: 100,

                alignment: Alignment.center,
                child: const Text(
                  'Sport Page',
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
