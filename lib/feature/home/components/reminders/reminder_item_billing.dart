import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

class ReminderItemBilling extends StatelessWidget {
  const ReminderItemBilling({
    Key? key,
    this.title = '',
    this.subtitle = '',
    this.body = '',
    this.cta = '',
    this.ctaStyle,
    this.dueDate = '',
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String body;
  final String dueDate;
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
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '$body\n',
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 2,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.unpaid,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                    Text(
                      dueDate,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: ctaStyle,
                  child: Text(cta),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
