import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.localizations.billing, style: Theme.of(context).textTheme.labelLarge,));
  }
}
