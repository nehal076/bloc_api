import 'package:flutter/material.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({Key? key}) : super(key: key);

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            Wrap(
              spacing: 6.0,
              runSpacing: 6.0,
              children: const <Widget>[
                MyChip('Health', Color(0xFFff8a65)),
                MyChip('Food', Color(0xFF4fc3f7)),
                MyChip('Lifestyle', Color(0xFF9575cd)),
                MyChip('Sports', Color(0xFF4db6ac)),
                MyChip('Nature', Color(0xFF5cda65)),
                MyChip('Learn', Color(0xFFacbb65)),
                MyChip('Learn', Color(0xFFacbb65)),
                MyChip('Learn', Color(0xFFacbb65)),
                MyChip('Learn', Color(0xFFacbb65)),
                MyChip('Learn', Color(0xFFacbb65)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyChip extends StatefulWidget {
  final String? label;
  final Color? color;
  const MyChip(
    this.label,
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  bool showInnerChips = false;
  @override
  Widget build(BuildContext context) {
    String label = widget.label!;
    Color color = widget.color!;
    return InkWell(
      onTap: () {
        setState(() {
          showInnerChips = true;
        });
      },
      child: Chip(
        labelPadding: const EdgeInsets.all(5.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade600,
          child: Text(label[0].toUpperCase()),
        ),
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: color,
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: const EdgeInsets.all(6.0),
      ),
    );
  }
}

class InnerChips extends StatelessWidget {
  const InnerChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyChip('Health', Color(0xFFff8a65));

    // Wrap(
    //   spacing: 6.0,
    //   runSpacing: 6.0,
    //   children: const <Widget>[
    //     MyChip('Health', Color(0xFFff8a65)),
    //     MyChip('Food', Color(0xFF4fc3f7)),
    //     MyChip('Lifestyle', Color(0xFF9575cd)),
    //   ],
    // );
  }
}
