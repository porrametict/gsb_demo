import 'package:flutter/material.dart';
import 'package:gsb_invest_coach/providers/question_provider.dart';
import 'package:gsb_invest_coach/screens/login_screen.dart';

import 'package:gsb_invest_coach/screens/main_screen.dart';
import 'package:gsb_invest_coach/screens/port_detail_screen.dart';
import 'package:gsb_invest_coach/screens/survey.dart';
import 'package:gsb_invest_coach/screens/servey_result_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuestionProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const LoginScreen();
    // return ServeyScreen();
    // return SurveyResultScreen();
    return const PortDetailScreen();
  }
}
