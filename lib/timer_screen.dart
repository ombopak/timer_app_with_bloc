import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {

  @override
  void initState() {
    SystemChrome.preferedOrientations = [
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,

    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
