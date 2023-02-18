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
    return ChangeNotifierProvider(
      create: (_)=> CounterProvider(),
      builder: (ctx, _) =>  Scaffold(
        appBar: AppBar(
          title: Text('State Mangement'),
        ),
        body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BodyWidget(),
                ElevatedButton(onPressed: (){
                  //set value
                  Provider.of<CounterProvider>(ctx, listen: false).countValue = 1;
                }, child: Text('Increment'))
              ],
            ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //set value
            Provider.of<CounterProvider>(ctx, listen: false).countValue = 1;
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), //
      ),
    );
  }
}
