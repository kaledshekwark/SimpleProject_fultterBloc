import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FloatingActionButton(onPressed: null,
        child: Icon(Icons.add),)

      ,SizedBox(height: 10)
      ,FloatingActionButton(onPressed: null,
        child: Icon(Icons.restart_alt),)
      ,SizedBox(height: 10,),

      FloatingActionButton(onPressed: null,
        child: Icon(Icons.remove),)

    ],
    mainAxisAlignment: MainAxisAlignment.end,);
  }
}
