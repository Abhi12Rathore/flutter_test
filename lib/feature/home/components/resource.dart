import 'package:flutter/material.dart';

class Resource extends StatelessWidget {
  const Resource({
    Key? key,
    required this.icon,
    this.title = '',
    this.iconSize = 20,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        shape: StadiumBorder(
            side: BorderSide(color: Theme.of(context).colorScheme.outline.withOpacity(0.25))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 16),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward,
            size: iconSize,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
