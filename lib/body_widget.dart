import 'package:flutter/material.dart';


late _BodyWidgetState bodyWidgetstate;



class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState()  {
    bodyWidgetstate = _BodyWidgetState();
    return bodyWidgetstate;
  }
}

class _BodyWidgetState extends State<BodyWidget> {

  var counter = 0;


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
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
