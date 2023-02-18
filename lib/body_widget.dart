import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mangemant/counter_provider.dart';





class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState()  {
    return _BodyWidgetState();
  }
}

class _BodyWidgetState extends State<BodyWidget> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${Provider.of<CounterProvider>(context).countValue}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
