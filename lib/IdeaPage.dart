import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({Key? key}) : super(key: key);

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('IdeaPage')),
      drawer: Drawer(),
      body:  SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                //color: Colors.grey[350],
                alignment: Alignment.center,
                child: const Text(
                  'Idea Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),
                ),

              ),
        ],

        ),
      ),
    );
  }
}
