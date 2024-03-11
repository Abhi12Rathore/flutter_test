import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

import 'resource.dart';
import 'section/section.dart';
import 'section/section_column.dart';

class MoreResources extends StatelessWidget {
  const MoreResources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      name: context.localizations.more_resources,
      child: SectionColumn(
        children: [
          Resource(
            icon: Image.asset('images/question-24.png'),
            title: context.localizations.faq,
          ),
          const SizedBox(height: 8),
          Resource(
            icon: Image.asset('images/alert-24.png'),
            title: context.localizations.troubleshooting,
          ),
        ],
      ),
    );
  }
}
