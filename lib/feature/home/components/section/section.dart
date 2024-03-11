import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    this.name,
    this.child,
    this.showViewAll = false,
  }) : super(key: key);

  final String? name;
  final Widget? child;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  name!,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Spacer(),
                if (showViewAll)
                  Text(context.localizations.view_all,
                      style:
                          Theme.of(context).textTheme.displaySmall?.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.primary,
                              )),
              ],
            ),
          ),
        if (child != null && name != null) const SizedBox(height: 16),
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
