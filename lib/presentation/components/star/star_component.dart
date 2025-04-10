import 'package:flutter/material.dart';

class StarComponent extends StatelessWidget {
  const StarComponent({
    required this.value,
    super.key,
  });

  final int value;
  static const max = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < max; i++) ...[
          Padding(
            padding: const EdgeInsets.all(2).copyWith(left: i == 0 ? 0 : null, right: i == max - 1 ? 0 : null),
            child: Icon(
              Icons.star,
              size: 18,
              color: i < value ? Colors.amber : Colors.grey,
            ),
          ),
        ],
      ],
    );
  }
}
