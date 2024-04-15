import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Ideate',
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
              // fontWeight: FontWeight.w600,
            ),
        children: [
          TextSpan(
            text: 'AI',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w900,
                ),
          ),
        ],
      ),
    );
  }
}
