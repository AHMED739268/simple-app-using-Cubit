import 'package:flutter/material.dart';

import 'app_router.dart';
import 'data/ApiServices/characterservices.dart';

Future<void> main() async {
  runApp(MyApp());
  await CharacterServices().getAllCharacters();
}



class MyApp extends StatelessWidget {
  final approuter route =approuter();


  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
      onGenerateRoute:route.generateroute,

    );
  }
}