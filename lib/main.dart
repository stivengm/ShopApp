import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/core/paths/app_paths.dart';
import 'package:shop_app/core/providers/bloc_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: storeBloc,
      child: _materialApp()
    );
  }

  MaterialApp _materialApp() => MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      scaffoldBackgroundColor: bgColor,
      primarySwatch: Colors.blue,
      fontFamily: "Gordita",
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.black54),
      ),
    ),
    
    debugShowCheckedModeBanner: false,
    routes: routesApp(),
    initialRoute: 'home',
  );

}