import 'package:flutter/widgets.dart';

import 'breakpoint.dart';
import 'breakpoints_enum.dart';
import 'breakpoints_enum_ext.dart';

/// [MediaQueryData] extension to get [BreakpointRange] and [BreakpointWindow].
extension BreakpointsMediaQueryExt on MediaQueryData {
  /// Get [Breakpoint] from [MediaQueryData].
  Breakpoint get breakpoint => Breakpoint.fromWidth(width: size.width);

  /// Get [BreakpointRange] from [MediaQueryData].
  BreakpointRange get breakpointRange =>
      BreakpointRangeExt.range(width: size.width);

  /// Get [BreakpointWindow] from [MediaQueryData].
  BreakpointWindow get breakpointWindow => breakpointRange.window;

  /// Get the [int] of columns from [MediaQueryData].
  int get breakpointColumns => breakpointRange.columns;

  /// Get the [int] of margins from [MediaQueryData].
  int get breakpointMargins => breakpointRange.margins;

  /// Get the [int] of gutters from [MediaQueryData].
  int get breakpointGutters => breakpointRange.gutters;
}
