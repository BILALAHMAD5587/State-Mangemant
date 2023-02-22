

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangemant/body_widget.dart';
import 'package:state_mangemant/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print('Build My Home Page');

    return ChangeNotifierProvider(
      create: (_)=> CounterProvider(),
      builder: (ctx, _) =>  Scaffold(
        appBar: AppBar(
          title: Text('State Mangement'),
        ),
        body: BodyWidget(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){
                //set value
                ctx.read<CounterProvider>().countValue = 1;
                ctx.read<CounterProvider>().addlistData(value: {
                  'name': 'Bilal',
                  'class': 'x'
                });
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: (){
                //set value
                Provider.of<CounterProvider>(ctx, listen: false).decrementCounter();

                


              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            )
          ],
        ),
        //
      ),
    );
  }
}



