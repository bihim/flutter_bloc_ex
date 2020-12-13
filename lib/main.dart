import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'settings.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings/settings_bloc.dart';

void main() {
  final BlocProvider<SettingsBloc> blocProvider = BlocProvider<SettingsBloc>(
    create: (_)=>SettingsBloc(),
    child: MyApp(),
  );
  runApp(blocProvider);
}

//https://youtu.be/BHC_D52TecY?list=PLlMOodDAsO4xrTgVEkKXfVf7sSVEsmWKQ&t=1316

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/settings': (context) => Settings(),
      },
    );
  }
}