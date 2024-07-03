import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/create_goal/views/providers/create_goal_provider.dart';
import 'features/create_goal/views/screens/create_goal_screen.dart';
import 'features/home/views/providers/home_provider.dart';
import 'features/home/views/screens/home_screen.dart';

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
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
        ChangeNotifierProvider<CreateGoalProvider>(
            create: (_) => CreateGoalProvider()),
      ],
      child: MaterialApp(
        title: 'Driven',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        routes: <String, WidgetBuilder>{
          HomeScreen.routeName: (_) => const HomeScreen(),
          CreateGoalScreen.routeName: (_) => const CreateGoalScreen(),
        },
      ),
    );
  }
}
