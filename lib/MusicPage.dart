import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('MusicPage')),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
          Container(
            width: double.infinity,
            height: 100,

            alignment: Alignment.center,
            child: const Text(
              'Music Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),
            ),

          ),
        ]),
      ),
    );
  }
}
