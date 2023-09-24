import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('WorkPage')),
      drawer: Drawer(),
      body:   SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 100,

                alignment: Alignment.center,
                child: const Text(
                  'Work Page',
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
