import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';

class BreakpointDemoScreen extends StatelessWidget {
  const BreakpointDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final breakpoint = size.breakpoint;
    final crossAxisCount = size.width ~/ 150 + 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakpoint Demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: breakpoint.margin,
            ),
            child: Text('Screen Size: $size'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: breakpoint.margin,
            ),
            child: Text('Breakpoint: $breakpoint'),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: breakpoint.margin,
              ),
              crossAxisCount: crossAxisCount,
              children: List.generate(
                100,
                (index) => Card(
                  child: Center(
                    child: Text('No.${index + 1}'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
