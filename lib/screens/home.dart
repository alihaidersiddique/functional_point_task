import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: const Text('Calculate Functional Point',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w900)),
            backgroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTextField('User Input'),
              buildTextField('User Output'),
              buildTextField('User Files'),
            ],
          ),
        ));
  }

  Column buildTextField(final text) {
    return Column(
      children: [
        Text(text,
            style: const TextStyle(
                backgroundColor: Colors.blue, color: Colors.white)),
        const SizedBox(height: 10),
        Container(
          width: 120,
          padding: const EdgeInsets.only(left: 10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: const TextField(
              style: TextStyle(backgroundColor: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none, focusColor: Colors.white)),
        )
      ],
    );
  }
}
