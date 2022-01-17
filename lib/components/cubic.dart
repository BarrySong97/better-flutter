import 'package:better/model/cubic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HabitCubicTitle extends StatelessWidget {
  // This widget is the root of your application.
  final String title;

  HabitCubicTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
    );
  }
}

class HabitCubicBody extends StatelessWidget {
  // This widget is the root of your application.

  final int color;
  final bool isActive;

  HabitCubicBody({required this.color, this.isActive = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> dates = [1, 2, 3, 4, 5, 6, 7];
    List<Container> items = dates
        .map((e) => Container(
              height: 36,
              width: 36,
              child: Center(
                  child: Text(e.toString(),
                      style: TextStyle(
                          color: isActive ? Colors.white : Color(0xFF222627)))),
              decoration: BoxDecoration(
                  color: isActive ? Color(color) : Color(0xFFf5f5f5),
                  shape: BoxShape.circle),
            ))
        .toList();
    return Container(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items,
        ));
  }
}

class HabitCubic extends StatelessWidget {
  CubicHabitDTO item;

  HabitCubic({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.album),
            title: HabitCubicTitle(
              title: item.name,
            ),
            // subtitle: Text('Music by Julie '),
          ),
          HabitCubicBody(color: item.theme)
        ],
      ),
    );
  }
}
