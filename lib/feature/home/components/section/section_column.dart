import 'package:flutter/material.dart';

class SectionColumn extends StatelessWidget {
  const SectionColumn({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: children,
      ),
    );
  }
}
