import 'package:flutter/material.dart';

import 'item_list.dart';

class NestedScroll extends StatefulWidget {
  const NestedScroll({Key? key}) : super(key: key);

  @override
  State<NestedScroll> createState() => _NestedScrollState();
}

class _NestedScrollState extends State<NestedScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => const ItemList(),
      ),
    );
  }
}
