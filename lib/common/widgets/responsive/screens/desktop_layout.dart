import 'package:flutter/material.dart';
import 'package:flutter_til_web/common/widgets/layouts/headers/header.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Drawer()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                const THeader(),
                body ?? SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
