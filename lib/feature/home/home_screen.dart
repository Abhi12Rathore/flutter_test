import 'package:chrconnecthpdraft/feature/home/components/appointments/appointments.dart';
import 'package:chrconnecthpdraft/feature/home/components/inbox/inbox.dart';
import 'package:chrconnecthpdraft/feature/home/components/more_resources.dart';
import 'package:chrconnecthpdraft/feature/home/components/welcoming.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_overlay/onboarding_overlay.dart';

import 'components/reminders/reminders.dart';

class HomeScreen extends StatefulWidget {
  final List<FocusNode> focusNodes;

  const HomeScreen({Key? key, required this.focusNodes}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      final OnboardingState? onboarding = Onboarding.of(context);
      if (onboarding != null) {
        onboarding.show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/background.png'),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Focus(
                focusNode: widget.focusNodes[0],
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Welcoming(
                    state: WelcomingStates.evening,
                    name: "Linda",
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Focus(
                  focusNode: widget.focusNodes[1],
                  child: const Reminders()),
              const SizedBox(height: 32),
              Focus(
                  focusNode: widget.focusNodes[2],
                  child: const Appointments(verticalLayout: true)),
              const SizedBox(height: 32),
              const Inbox(verticalLayout: true),
              const SizedBox(height: 32),
              const MoreResources(),
              const SizedBox(height: 88),
            ],
          ),
        ),
      ],
    );
  }
}
