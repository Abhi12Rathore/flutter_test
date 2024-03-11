import 'dart:ui';

import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/app/theme/app_theme.dart';
import 'package:chrconnecthpdraft/feature/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:onboarding_overlay/onboarding_overlay.dart';

/// Main app widget in charge of creating [MaterialApp] along with localization delegates, routes and theme.
class CHRConnectApp extends StatefulWidget {
  const CHRConnectApp({Key? key}) : super(key: key);

  @override
  State<CHRConnectApp> createState() => _CHRConnectAppState();
}

class _CHRConnectAppState extends State<CHRConnectApp> {
  final GlobalKey<OnboardingState> onBoardingKey = GlobalKey<OnboardingState>();
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    focusNodes = List<FocusNode>.generate(
      5,
      (int i) => FocusNode(debugLabel: 'Onboarding Focus Node $i'),
      growable: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => context.localizations.chr_connect,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        ...const MaterialScrollBehavior().dragDevices
      }),
      home: Onboarding(
          key: onBoardingKey,
          autoSizeTexts: true,
          steps: <OnboardingStep>[
            OnboardingStep(
              focusNode: focusNodes[0],
              titleTextColor: Colors.black,
              titleText: "Welcome Linda!!",
              labelBoxPadding: const EdgeInsets.all(24.0),
              labelBoxDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                color: AppTheme.colorScheme.secondaryContainer,
              ),
              arrowPosition: ArrowPosition.autoVerticalCenter,
              hasArrow: true,
              hasLabelBox: true,
              overlayBehavior: HitTestBehavior.translucent,
              onTapCallback: (
                TapArea area,
                VoidCallback next,
                VoidCallback close,
              ) {
                if (area == TapArea.label) {
                  next();
                }
              },
              stepBuilder: (
                BuildContext context,
                OnboardingStepRenderInfo renderInfo,
              ) {
                return Material(
                  child: Container(
                    color: AppTheme.colorScheme.secondaryContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Hello Linda!!\n",
                              style: AppTheme.textTheme.displayMedium),
                          TextSpan(
                              text: "Let's quickly begin with the journey",
                              style: AppTheme.textTheme.labelLarge),
                        ])),
                        IconButton(
                            iconSize: 30.0,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward))
                      ],
                    ),
                  ),
                );
              },
            ),
            OnboardingStep(
              focusNode: focusNodes[1],
              titleText: 'Setup Reminders!!',
              bodyText: 'Check out all your daily reminders',
              overlayColor: AppTheme.colorScheme.secondaryContainer,
              overlayBehavior: HitTestBehavior.translucent,
              bodyTextColor: Colors.black,
              titleTextColor: Colors.black,
              hasArrow: true,
              hasLabelBox: true,
              onTapCallback: (
                TapArea area,
                VoidCallback next,
                VoidCallback close,
              ) {
                if (area == TapArea.label) {
                  next();
                }
              },
              stepBuilder: (
                BuildContext context,
                OnboardingStepRenderInfo renderInfo,
              ) {
                return Material(
                  child: Container(
                    color: AppTheme.colorScheme.secondaryContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Setup Reminders!!\n",
                              style: AppTheme.textTheme.displayMedium),
                          TextSpan(
                              text: "Check out all your daily reminders",
                              style: AppTheme.textTheme.labelLarge),
                        ])),
                        IconButton(
                            iconSize: 30.0,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward))
                      ],
                    ),
                  ),
                );
              },
            ),
            OnboardingStep(
              focusNode: focusNodes[2],
              titleText: '',
              overlayColor: AppTheme.colorScheme.secondaryContainer,
              overlayBehavior: HitTestBehavior.translucent,
              bodyTextColor: Colors.black,
              titleTextColor: Colors.black,
              hasArrow: true,
              hasLabelBox: true,
              onTapCallback: (
                TapArea area,
                VoidCallback next,
                VoidCallback close,
              ) {
                if (area == TapArea.label ||
                    area == TapArea.overlay ||
                    area == TapArea.hole) {
                  next();
                }
              },
              stepBuilder: (
                BuildContext context,
                OnboardingStepRenderInfo renderInfo,
              ) {
                return Material(
                  child: Container(
                    color: AppTheme.colorScheme.secondaryContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Upcoming Appointments\n",
                              style: AppTheme.textTheme.displayMedium),
                          TextSpan(
                              text:
                                  "Here, you will find your booked appointments",
                              style: AppTheme.textTheme.labelLarge),
                        ])),
                        IconButton(
                            iconSize: 30.0,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_downward))
                      ],
                    ),
                  ),
                );
              },
            ),
            OnboardingStep(
              focusNode: focusNodes[3],
              titleText: '',
              overlayColor: AppTheme.colorScheme.secondaryContainer,
              overlayBehavior: HitTestBehavior.translucent,
              bodyTextColor: Colors.black,
              titleTextColor: Colors.black,
              hasArrow: true,
              hasLabelBox: true,
              onTapCallback: (
                TapArea area,
                VoidCallback next,
                VoidCallback close,
              ) {
                if (area == TapArea.label ||
                    area == TapArea.overlay ||
                    area == TapArea.hole) {
                  next();
                }
              },
              stepBuilder: (
                BuildContext context,
                OnboardingStepRenderInfo renderInfo,
              ) {
                return Material(
                  child: Container(
                    color: AppTheme.colorScheme.secondaryContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Notifications\n",
                              style: AppTheme.textTheme.displayMedium),
                          TextSpan(
                              text: "You can check out missing updates here!!",
                              style: AppTheme.textTheme.labelLarge),
                        ])),
                        IconButton(
                            iconSize: 30.0,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_upward))
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
          child: MainScreen(focusNodes: focusNodes)),
      theme: ThemeData(
        colorScheme: AppTheme.colorScheme,
        scaffoldBackgroundColor: AppTheme.colorScheme.background,
        textTheme: AppTheme.textTheme,
        textButtonTheme: AppTheme.textButtonTheme,
        chipTheme: AppTheme.chipTheme,
        iconTheme: AppTheme.iconTheme,
      ),
    );
  }
}
