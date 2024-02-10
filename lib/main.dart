import 'package:biodata/provider/biodata_model.dart';
import 'package:biodata/provider/biodata_provider.dart';
import 'package:biodata/router.dart';
import 'package:biodata/screen/detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
    runApp(MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => BiodataProvider()),
      ],  child: const MyApp(),
    ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: routes,
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final BiodataModel biodata = settings.arguments as BiodataModel;
          return MaterialPageRoute(
            builder: (context) => DetailScreen(biodata: biodata),
          );
        }
        return null;
      },
    );
  }
}
