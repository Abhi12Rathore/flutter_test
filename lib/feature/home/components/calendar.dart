import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
    required this.month,
    required this.day,
    this.size,
  }) : super(key: key);

  final Size? size;
  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.25),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      width: size?.width,
      height: size?.height,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              month.toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                day,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
