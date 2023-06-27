import 'package:breakpoints_mq/src/breakpoint.dart';
import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:flutter/widgets.dart';

extension SizeExt on Size {
  /// Get [Breakpoint] from [Size].
  Breakpoint get breakpoint => Breakpoint.fromWidth(width);

  /// Get [BreakpointScreenSize] from [Size].
  BreakpointScreenSize get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [double] of margin from [Size].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [Size].
  double get breakpointBody => breakpoint.body;
}
