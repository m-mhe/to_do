import 'package:flutter/material.dart';
import 'package:to_do/home.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.yellow[600],
              foregroundColor: Colors.black54,
              centerTitle: true),
          scaffoldBackgroundColor: Colors.yellow[100],
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow[200],
                  foregroundColor: Colors.black54,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  side: const BorderSide(
                    color: Colors.black26,
                    width: 2,
                  ))),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.yellow[600],
              foregroundColor: Colors.black54,
              splashColor: Colors.yellow[300]),
          inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(color: Colors.black26),
              labelStyle: const TextStyle(color: Colors.black26),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.yellow.shade100, width: 20)))),
      title: "TO DO",
      home: Home(),
    );
  }
}
