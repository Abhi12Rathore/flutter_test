import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SectionRow extends StatelessWidget {
  const SectionRow({
    Key? key,
    this.viewportFraction = 0.9,
    required this.children,
  }) : super(key: key);

  final double viewportFraction;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: viewportFraction);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ExpandablePageView(
            controller: controller,
            pageSnapping: false,
            padEnds: false,
            children: children,
          ),
          const SizedBox(height: 16),
          SmoothPageIndicator(
            controller: controller,
            count: children.length,
            effect: ColorTransitionEffect(
              dotWidth: 8.0,
              dotHeight: 8.0,
              activeDotColor: context.colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
