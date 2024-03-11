import 'package:flutter/material.dart';

class ReminderItemGeneral extends StatelessWidget {
  const ReminderItemGeneral({
    Key? key,
    this.title = '',
    this.subtitle = '',
    this.body = '',
    this.cta = '',
    this.ctaStyle,
    this.image,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String body;
  final Widget? image;
  final String cta;
  final ButtonStyle? ctaStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                const Spacer(),
                image ?? const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '$body\n',
              style: Theme.of(context).textTheme.labelLarge,
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              style: ctaStyle,
              child: Text(cta),
            )
          ],
        ),
      ),
    );
  }
}
