import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../../../core/widgets/app_logo.dart';
import '../../../create_goal/views/screens/create_goal_screen.dart';
import '../providers/home_provider.dart';
import '../widgets/goal_display_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (BuildContext context, HomeProvider homePro, _) {
        return Scaffold(
            appBar: AppBar(title: const AppLogo()),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.custom(
                gridDelegate: SliverWovenGridDelegate.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  pattern: <WovenGridTile>[
                    const WovenGridTile(1),
                    const WovenGridTile(
                      5 / 7,
                      crossAxisRatio: 0.9,
                      alignment: AlignmentDirectional.centerEnd,
                    ),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: homePro.goals.length,
                  (BuildContext context, int index) => Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: GoalDisplayWidget(goal: homePro.goals[index]),
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(CreateGoalScreen.routeName),
              tooltip: 'Add',
              child: const Icon(Icons.add),
            ));
      },
    );
  }
}
