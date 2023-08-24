import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/counter.dart';
import 'package:test2/view/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'test2',
            theme: ThemeData(primarySwatch: Colors.deepOrange),
            home: const HomePage()));
  }
}
