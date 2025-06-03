import 'package:flutter/material.dart';
import 'package:flutter_til_web/common/widgets/layouts/headers/header.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const THeader(),
      body: body ?? Container(),
    );
  }
}
