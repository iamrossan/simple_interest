import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData.dark(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cprinciple = TextEditingController();
  TextEditingController ctime = TextEditingController();
  TextEditingController crate = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "Enter Principle",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: cprinciple,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "50000", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Enter Time",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: ctime,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "2", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Enter Rate of Interest",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: crate,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "3", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.green),
            width: 160,
            height: 50,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  result = double.parse(cprinciple.text) *
                      double.parse(crate.text) *
                      double.parse(ctime.text) /
                      100;
                });
              },
              child: const Text(
                "Calculate",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text("The result is: $result"),
        ],
      ),
    );
  }
}
