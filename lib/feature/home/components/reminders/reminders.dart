import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

import 'reminder_item_billing.dart';
import 'reminder_item_general.dart';
import '../section/section.dart';
import '../section/section_row.dart';

class Reminders extends StatelessWidget {
  const Reminders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
        name: context.localizations.reminders,
        showViewAll: true,
        child: SectionRow(
          children: [
            ReminderItemGeneral(
              title: "Intake Questionnaire",
              subtitle: 'LMC Optometry & Eye Care',
              body:
              'Please, fill out the pre-visit questionnaire',
              cta: 'Start',
              ctaStyle: Theme.of(context)
                  .textButtonTheme
                  .style
                  ?.copyWith(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.background),
                foregroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.primary),
              ),
              image: CircleAvatar(
                backgroundImage:
                Image.asset('images/treatment.png').image,
              ),
            ),
            ReminderItemGeneral(
              title: "It's time to check in!",
              subtitle: 'LMC Optometry & Eye Care',
              body: 'Counselling Session May 27th, at 10:00 AM',
              cta: 'Check in',
              image: CircleAvatar(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .tertiaryContainer,
                backgroundImage:
                Image.asset('images/check.png').image,
              ),
            ),
            ReminderItemBilling(
              title: "Contact Lenses Fitting Exam",
              subtitle: 'LMC Optometry & Eye Care',
              body: '\$47.25 CAD',
              cta: 'Pay',
              ctaStyle: Theme.of(context)
                  .textButtonTheme
                  .style
                  ?.copyWith(
                backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.background),
                foregroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.primary),
              ),
              dueDate: 'Due date: May 27th, 2022',
            ),
          ],
        ));
  }
}
