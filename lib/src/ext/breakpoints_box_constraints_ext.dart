import 'package:breakpoints_mq/src/breakpoint.dart';
import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:flutter/widgets.dart';

extension BreakpointsBoxConstraintsExt on BoxConstraints {
  /// Get [Breakpoint] from [BoxConstraints].
  Breakpoint get breakpoint => Breakpoint.fromConstraints(this);

  /// Get [BreakpointScreenSize] from [BoxConstraints].
  BreakpointScreenSize get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [int] of column from [BoxConstraints].
  int get breakpointColumn => breakpoint.column;

  /// Get the [double] of margin from [BoxConstraints].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [BoxConstraints].
  double get breakpointBody => breakpoint.body;
}
