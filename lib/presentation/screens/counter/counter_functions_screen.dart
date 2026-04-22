import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFuntionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext) {
    var floatingActionButton = FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {
        if (clickCounter == 0) return;
        clickCounter--;
        setState(() {});
      },
      child: const Icon(Icons.plus_one),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('conter Fontions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),

      //AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),

            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ),

            //if( clickCounter == 1 )
            // const Text('Click', style : TextStyle(fontSize: 25 )),

            //if ( clickCounter ! = 1
            // const Text('Click', style:
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
            child: const Icon(Icons.refresh_outlined),
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
