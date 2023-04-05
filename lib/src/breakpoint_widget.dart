import 'package:breakpoints_mq/src/ext/breakpoints_box_constraints_ext.dart';
import 'package:flutter/material.dart';

/// A widget with padding added, depending on the constraints the widget has.
@Deprecated('Use Breakpoint.fromConstraints.')
class BreakpointWidget extends StatelessWidget {
  const BreakpointWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: constraints.breakpointMargin,
        ),
        child: child,
      ),
    );
  }
}
