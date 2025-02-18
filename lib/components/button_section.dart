import 'package:flutter/material.dart';

import 'button_with_text.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // CALL
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),

          // ROUTE
          ButtonWithText(
            color: color,
            icon: Icons.route,
            label: 'ROUTE',
          ),

          // SHARE
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}
