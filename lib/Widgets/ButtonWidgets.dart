import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/counter_bloc.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FloatingActionButton(
        onPressed:() {
          BlocProvider.of<CounterBloc>(context).add(IncramentEvent());
        },
        child: Icon(Icons.add),)

      ,SizedBox(height: 10)
      ,FloatingActionButton( onPressed:() {
    BlocProvider.of<CounterBloc>(context).add(DecramentEvent());
    },
        child: Icon(Icons.restart_alt),)
      ,SizedBox(height: 10,),

      FloatingActionButton(onPressed:() {
    BlocProvider.of<CounterBloc>(context).add(DecramentEvent());
    },
        child: Icon(Icons.remove),)

    ],
    mainAxisAlignment: MainAxisAlignment.end,);
  }
}
