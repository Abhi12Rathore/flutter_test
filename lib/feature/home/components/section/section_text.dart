import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  const SectionText({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        message,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}
