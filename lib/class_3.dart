import 'package:flutter/material.dart';
import 'count_bloc_provider.dart';
import 'counter_block.dart';
import 'counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Class3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = CountBlocProvider.of(context).bloc;
    return StreamBuilder<int>(
      stream: bloc.itemCount,
      initialData: 0,
      builder: (context, snapshot) => Text(
        "Class 3 : ${snapshot.data}",
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }
}
