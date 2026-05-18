import 'package:flutter/material.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/bottomNavigation.dart';
import 'package:flutter_todolist/fab.dart';
import 'package:flutter_todolist/util.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Container(
                        margin: const EdgeInsets.only(left: 10, top: 15, bottom: 0),
                        child: const Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: CustomColors.TextSubHeader),
                        ),
                      ),
                  childCount: 1),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                _buildProjectCard('assets/images/icon-user.png', 'Personal', '24 Tasks', CustomColors.YellowBackground),
                _buildProjectCard('assets/images/icon-briefcase.png', 'Work', '44 Tasks', CustomColors.GreenBackground),
                _buildProjectCard('assets/images/icon-presentation.png', 'Meeting', '45 Tasks', CustomColors.PurpleBackground),
                _buildProjectCard('assets/images/icon-shopping-basket.png', 'Shopping', '54 Tasks', CustomColors.OrangeBackground),
                _buildProjectCard('assets/images/icon-confetti.png', 'Party', '24 Tasks', CustomColors.BlueBackground),
                _buildProjectCard('assets/images/icon-molecule.png', 'Study', '24 Tasks', CustomColors.PurpleBackground),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }

  Widget _buildProjectCard(String imagePath, String title, String taskCount, Color bgColor) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
              color: CustomColors.GreyBorder,
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(imagePath),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 17,
                    color: CustomColors.TextHeaderGrey,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                taskCount,
                style: const TextStyle(
                    fontSize: 9,
                    color: CustomColors.TextSubHeaderGrey),
              ),
            ],
          ),
        ),
    );
  }
}