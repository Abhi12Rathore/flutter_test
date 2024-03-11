import 'package:chrconnecthpdraft/feature/home/components/link_section.dart';
import 'package:chrconnecthpdraft/feature/home/components/more_resources.dart';
import 'package:chrconnecthpdraft/feature/home/components/section/section.dart';
import 'package:chrconnecthpdraft/feature/home/components/section/section_column.dart';
import 'package:chrconnecthpdraft/feature/home/components/section/section_text.dart';
import 'package:chrconnecthpdraft/feature/home/components/welcoming.dart';
import 'package:flutter/material.dart';
import 'package:chrconnecthpdraft/feature/app/extension/context.dart';

class HomeScreenEmpty extends StatelessWidget {
  const HomeScreenEmpty({Key? key}) : super(key: key);

  static const double cardsViewportFraction = 0.9;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Stack(
          children: [
            Image.asset('images/background.png'),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Welcoming(
                      state: WelcomingStates.evening,
                      name: "Linda",
                    ),
                  ),
                  const SizedBox(height: 32),
                  Section(
                    name: context.localizations.reminders,
                    child: SectionText(
                      message: context.localizations.empty_reminders_message,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Section(
                    child: SectionColumn(
                      children: [
                        const LinkSection(
                          icon: Icons.calendar_today_rounded,
                          title: 'My appointments',
                          subtitle:
                              'Find your next appointment or book a new appointment.',
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  textStyle: MaterialStatePropertyAll(
                                      Theme.of(context)
                                          .textTheme
                                          .displayMedium),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.symmetric(vertical: 16)),
                                ),
                            child: Text(context.localizations.new_appointment),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Section(
                    child: SectionColumn(
                      children: [
                        const LinkSection(
                          icon: Icons.inbox_rounded,
                          title: 'Inbox',
                          subtitle:
                          'Start a conversation with your healthcare provider.',
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  textStyle: MaterialStatePropertyAll(
                                      Theme.of(context)
                                          .textTheme
                                          .displayMedium),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.symmetric(vertical: 16)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.background),
                                  foregroundColor: MaterialStatePropertyAll(
                                      Theme.of(context).colorScheme.primary),
                                ),
                            child: Text(context.localizations.new_message),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const MoreResources(),
                  const SizedBox(height: 88),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
