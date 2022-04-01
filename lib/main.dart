import 'package:flutter/material.dart';

import 'package:wordpair_gen/pages/loading.dart';
import 'package:wordpair_gen/pages/home.dart';
import 'package:wordpair_gen/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ));
