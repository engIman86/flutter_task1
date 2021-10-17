import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'food',
          ),
        ),
        backgroundColor: Colors.grey,
        shadowColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            image: const DecorationImage(
                image: AssetImage('assets/2.jpg'), fit: BoxFit.fill),
          ),
          child: Stack(children: const [
            Text(
              'Text decoration',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Positioned(
              child: Text(
                'Ui design for food app',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              top: 40,
            )
          ]),
        ),
      ),
    );
  }
}
