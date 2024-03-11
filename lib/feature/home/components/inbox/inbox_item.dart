import 'package:chrconnecthpdraft/feature/home/components/count_circle.dart';
import 'package:flutter/material.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    Key? key,
    required this.image,
    this.count = 0,
    this.title = '',
    this.subtitle = '',
    this.imageRadius = 20,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final ImageProvider image;
  final double imageRadius;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        border:
            Border.all(color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CountCircle(
            image: image,
            imageRadius: imageRadius,
            count: count,
            countColor: Theme.of(context).colorScheme.surfaceVariant,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
