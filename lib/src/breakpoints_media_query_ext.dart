import 'package:flutter/widgets.dart';

import 'breakpoint.dart';
import 'breakpoints_enum.dart';

/// [MediaQueryData] extension to get [BreakpointScreenSize].
extension BreakpointsMediaQueryExt on MediaQueryData {
  /// Get [Breakpoint] from [MediaQueryData].
  Breakpoint get breakpoint => Breakpoint.fromWidth(size.width);

  /// Get [BreakpointScreenSize] from [MediaQueryData].
  BreakpointScreenSize get breakpointScreenSize => breakpoint.screenSize;

  /// Get the [int] of column from [MediaQueryData].
  int get breakpointColumn => breakpoint.column;

  /// Get the [double] of margin from [MediaQueryData].
  double get breakpointMargin => breakpoint.margin;

  /// Get the [double] of body from [MediaQueryData].
  double get breakpointBody => breakpoint.body;
}
