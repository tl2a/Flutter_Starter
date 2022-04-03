import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wordpair_gen/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await instance.getTime();

    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.redAccent,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
