import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        );
        
        



      }
      
      ),
    );
  }
}
