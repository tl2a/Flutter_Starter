import 'package:flutter/material.dart';

class SampleApp extends StatefulWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/avatar.jpg')),
                ),
                Positioned(
                    bottom: 30,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(0),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.greenAccent,
                        size: 50,
                      ),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: Text(
                'Highlight $level',
                style: const TextStyle(
                    fontFamily: 'Museosans Rounded', fontSize: 25),
              ),
            ),
            const Divider(height: 60),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.cyan,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.pinkAccent,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigoAccent,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purpleAccent,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(4),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => level += 1),
        backgroundColor: Colors.red[600],
        mini: true,
        child: const Icon(Icons.add),
      ),
    );
  }
}
