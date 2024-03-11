import 'package:flutter/material.dart';

class LinkSection extends StatelessWidget {
  const LinkSection({
    Key? key,
    required this.icon,
    this.title = '',
    this.subtitle = '',
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.25),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: Theme.of(context).colorScheme.tertiaryContainer,
            ),
            child: Icon(
              icon,
              size: 28,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.outline),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            visualDensity: VisualDensity.compact,
            shape: CircleBorder(
                side: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .outline
                        .withOpacity(0.25))),
            padding: const EdgeInsets.all(16),
            minWidth: 40,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Icon(
              Icons.arrow_forward,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
