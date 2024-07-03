import 'package:driven/features/create_goal/views/screens/create_goal_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/create_goal/views/providers/create_goal_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CreateGoalProvider()),
      ],
      child: MaterialApp(
        title: 'Driven',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CreateGoalScreen(),
        routes: <String, WidgetBuilder>{
          CreateGoalScreen.routeName: (context) => const CreateGoalScreen(),
        },
      ),
    );
  }
}
