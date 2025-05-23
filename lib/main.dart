import 'package:flutter/material.dart';
import 'package:part_minder/pages/welcome.dart';
import 'pages/home.dart';
import 'dart:async';
import 'package:part_minder/utils/shared_preferences_utils.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Timer _timer;
  int _start = 5;

  @override
  void initState() {
    super.initState();
    startTimer(); // Запускаем таймер при инициализации виджета
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset("assets/images/logo.png")],
        ),
      ),
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {

      if (_start == 0) {
        timer.cancel();
        SharedPreferencesUtils sharedPreferencesUtils = SharedPreferencesUtils();
        bool isWelcome = sharedPreferencesUtils.readBool('welcome') as bool;
        if (isWelcome) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else {
          sharedPreferencesUtils.writeBool('welcome', true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomePage()),
          );
        }
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
