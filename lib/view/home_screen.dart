import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/provider/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Counter App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Counter", style: TextStyle(fontSize: 24)),
              const SizedBox(height: 24),
              Consumer<CounterProvider>(builder: (context, value, child) {
                return Text(
                  value.getCounter.toString(),
                  style: const TextStyle(fontSize: 22),
                );
              }),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).remove();
              },
              child: const Center(child: Text("-")),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context, listen: false).add();
              },
              child: const Center(child: Text("+")),
            ),
          ],
        ));
  }
}
