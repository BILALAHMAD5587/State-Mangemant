import 'package:flutter/material.dart';
import 'package:state_mangemant/body_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('State Mangement'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BodyWidget(),
          ElevatedButton(onPressed: (){
            bodyWidgetstate.setState(() {
              bodyWidgetstate.counter++;
            });
          }, child: Text('Increment'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            bodyWidgetstate.setState(() {
              bodyWidgetstate.counter++;
            });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }
}
