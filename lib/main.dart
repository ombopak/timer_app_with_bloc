import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_app_with_bloc/timer_cubit.dart';
import 'package:timer_app_with_bloc/timer_state.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Timer With Cubit Bloc'),
        ),
        body: BlocBuilder<TimerCubit, TimerState>(
          builder: (context, state) {
            if (state is TimerInitial) {
              return Center(
                child: ElevatedButton(
                  onPressed: () =>
                      BlocProvider.of<TimerCubit>(context).startTimer(0),
                  child: Text('start'),
                ),
              );
            }
            if (state is TimerProgress) {
              return Center(
                  child: Text(
                '${state.elapsed!}',
                style: TextStyle(fontSize: 36),
              ));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
