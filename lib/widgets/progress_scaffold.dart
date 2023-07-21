import 'package:flutter/material.dart';

class ProgressScaffold extends StatelessWidget {
  const ProgressScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}