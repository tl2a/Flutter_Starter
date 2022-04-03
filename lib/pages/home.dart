import 'package:flutter/material.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    // set background
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';

    return Scaffold(
        body: Stack(
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 120),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
            )),
        Positioned(
          top: 200,
          left: 20,
          bottom: 200,
          right: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8,
                  sigmaY: 8,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        onPressed: () async {
                          dynamic result =
                              await Navigator.pushNamed(context, '/location');
                          if (result != null) {
                            setState(() {
                              data = {
                                'location': result['location'],
                                'flag': result['flag'],
                                'time': result['time'],
                                'isDayTime': result['isDayTime'],
                              };
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.edit_location,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Edit Location',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          data['location'],
                          style: const TextStyle(
                            fontSize: 28,
                            letterSpacing: 2,
                            color: Colors.white,
                            fontFamily: 'Museosans Rounded',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        data['time'],
                        style: const TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontFamily: 'Museosans Rounded',
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    ));
  }
}
