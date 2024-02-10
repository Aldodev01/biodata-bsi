import 'package:biodata/screen/home.dart';
import 'package:biodata/screen/input.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const HomeScreen(),
    '/input': (context) => const InputScreen(),
  };