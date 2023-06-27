import 'package:breakpoints_mq/src/breakpoint.dart';
import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/ext/breakpoints_size_ext.dart';
import 'package:flutter/widgets.dart';

extension BuildContextExt on BuildContext {
  /// Get [Breakpoint] from [BuildContext].
  Breakpoint get breakpoint => MediaQuery.sizeOf(this).breakpoint;

  /// Get [BreakpointScreenSize] from [BuildContext].
  BreakpointScreenSize get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [double] of margin from [BuildContext].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [BuildContext].
  double get breakpointBody => breakpoint.body;
}
