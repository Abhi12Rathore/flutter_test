import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/home/components/section/section_column.dart';
import 'package:flutter/material.dart';

import '../section/section.dart';
import '../section/section_row.dart';
import 'inbox_item.dart';

class Inbox extends StatelessWidget {
  const Inbox({
    Key? key,
    this.verticalLayout = false,
  }) : super(key: key);

  final bool verticalLayout;

  @override
  Widget build(BuildContext context) {
    return Section(
      name: context.localizations.inbox,
      showViewAll: true,
      child: _sectionLayoutContent(),
    );
  }

  Widget _sectionLayoutContent() {
    var children = [
      Padding(
        padding: verticalLayout
            ? const EdgeInsets.symmetric(vertical: 4.0)
            : const EdgeInsets.symmetric(horizontal: 4.0),
        child: InboxItem(
          title: 'LMC Optometry & Eye Care',
          image: Image.asset('images/lmc.png').image,
          count: 1,
          subtitle: 'You have a new message from your clinic',
        ),
      ),
      Padding(
        padding: verticalLayout
            ? const EdgeInsets.symmetric(vertical: 4.0)
            : const EdgeInsets.symmetric(horizontal: 4.0),
        child: InboxItem(
          title: 'Came-acem Clinic',
          image: Image.asset('images/came.png').image,
          count: 2,
          subtitle: 'You have new messages from your clinic',
        ),
      ),
    ];

    return verticalLayout
        ? SectionColumn(children: children)
        : SectionRow(children: children);
  }
}
