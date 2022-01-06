import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  final int count;
  final int activeCount;

  const StarRow({
    Key? key,
    this.count = 5,
    this.activeCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < count; i++)
          Icon(
            Icons.star,
            color: i < activeCount ? Colors.amberAccent : Colors.grey[400],
          ),
      ],
    );
  }
}
