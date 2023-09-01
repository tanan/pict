import 'package:flutter/material.dart';
import 'package:pict_ui/utils/colors.dart';

class ActivityStatus extends StatelessWidget {
  const ActivityStatus({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.blue, width: 5),
                ),
              ),
              child: const Text(
                "Training Status",
                style: TextStyle(
                  fontSize: 18,
                  color: textColorDark,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text("Lesson Progress"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.45,
              margin: const EdgeInsets.fromLTRB(8, 0, 4, 4),
              padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: borderColor, width: 5),
                  top: BorderSide(color: borderColor, width: 1),
                  bottom: BorderSide(color: borderColor, width: 1),
                  right: BorderSide(color: borderColor, width: 1),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.calendar_month_outlined, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("連続学習日数",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text("7"),
                  Text("回",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenSize.width * 0.45,
              margin: const EdgeInsets.fromLTRB(8, 0, 4, 4),
              padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: borderColor, width: 5),
                  top: BorderSide(color: borderColor, width: 1),
                  bottom: BorderSide(color: borderColor, width: 1),
                  right: BorderSide(color: borderColor, width: 1),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.edit_note_outlined, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("総レッスン数",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text("20"),
                  SizedBox(width: 4),
                  Text("回",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.45,
              margin: const EdgeInsets.fromLTRB(8, 0, 4, 4),
              padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: borderColor, width: 5),
                  top: BorderSide(color: borderColor, width: 1),
                  bottom: BorderSide(color: borderColor, width: 1),
                  right: BorderSide(color: borderColor, width: 1),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.watch_later_outlined, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("総学習時間",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text("8.3"),
                  SizedBox(width: 4),
                  Text("時間",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenSize.width * 0.45,
              margin: const EdgeInsets.fromLTRB(8, 0, 4, 4),
              padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: borderColor, width: 5),
                  top: BorderSide(color: borderColor, width: 1),
                  bottom: BorderSide(color: borderColor, width: 1),
                  right: BorderSide(color: borderColor, width: 1),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.watch_later_outlined, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("本日の学習時間",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text("48"),
                  SizedBox(width: 4),
                  Text("分",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}