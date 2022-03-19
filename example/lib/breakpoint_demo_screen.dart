import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';

class BreakpointDemoScreen extends StatelessWidget {
  const BreakpointDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final breakpoint = data.breakpoint;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakpoint Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: breakpoint.margin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Screen Size: ${data.size.toString()}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Breakpoint: ${breakpoint.toString()}'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: breakpoint.column,
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
      ),
    );
  }
}
