import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
  MyWidget({required this.count});

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          'Тапшырма 2',
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/bg.jpg'),
            ),
          ),
          child: Center(
            child: Container(
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'san:$count',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
