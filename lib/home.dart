import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:flutter_todolist/appBars.dart';
import 'package:flutter_todolist/bottomNavigation.dart';
import 'package:flutter_todolist/fab.dart';
import 'package:flutter_todolist/util.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: const Text(
                'Today',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            // First item (Static completed task example)
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/images/checked.png'),
                  const Text('07.00 AM', style: TextStyle(color: CustomColors.TextGrey)),
                  const SizedBox(
                    width: 180,
                    child: Text(
                      'Go jogging with Christin',
                      style: TextStyle(
                          color: CustomColors.TextGrey,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
            ),
            // Modern Slidable Task Item
            Slidable(
              key: const ValueKey(0),
              endActionPane: ActionPane(
                motion: const DrawerMotion(),
                extentRatio: 0.25,
                children: [
                  CustomSlidableAction(
                    onPressed: (context) => print('Delete'),
                    backgroundColor: Colors.transparent,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: CustomColors.TrashRedBackground),
                      child: Image.asset('assets/images/trash.png'),
                    ),
                  ),
                ],
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/images/checked-empty.png'),
                    const Text('08.00 AM', style: TextStyle(color: CustomColors.TextGrey)),
                    const SizedBox(
                      width: 180,
                      child: Text(
                        'Send project file',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Image.asset('assets/images/bell-small.png'),
                  ],
                ),
              ),
            ),
            // Legacy Container items converted to modern layout constants below
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/images/checked-empty.png'),
                  const Text('10.00 AM', style: TextStyle(color: CustomColors.TextGrey)),
                  const SizedBox(
                    width: 180,
                    child: Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small-yellow.png'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/images/checked-empty.png'),
                  const Text('13.00 PM', style: TextStyle(color: CustomColors.TextGrey)),
                  const SizedBox(
                    width: 180,
                    child: Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 15),
              child: const Text(
                'Tomorrow',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            // Additional list widgets can follow this structural cleaning...
            const SizedBox(height: 15)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}