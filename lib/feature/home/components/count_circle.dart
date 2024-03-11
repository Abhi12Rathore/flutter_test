import 'package:flutter/material.dart';

class CountCircle extends StatelessWidget {
  const CountCircle({
    Key? key,
    required this.image,
    this.count = 0,
    this.imageRadius = 0,
    this.countColor,
  }) : super(key: key);

  final ImageProvider image;
  final int count;
  final double imageRadius;
  final Color? countColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: image,
          radius: imageRadius,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: countColor,
            radius: imageRadius * 0.35,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: Text(
                count.toString(),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
