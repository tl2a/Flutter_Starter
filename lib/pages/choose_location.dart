import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'Yoshi';
    });

    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hey There');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose a location'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: const SafeArea(
          child: Text('Choose a location'),
        ));
  }
}
