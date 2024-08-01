import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(builder: (context, value, child) {
            return Text(
              value.counter.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          const SizedBox(
            height: 20,
          ),
          Consumer<CounterProvider>(builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value.add();
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                    Colors.green,
                  )),
                  child: const Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: () {
                    value.subtract();
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                    Colors.red,
                  )),
                  child: const Text("Decrement"),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
