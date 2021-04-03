import 'package:flutter/widgets.dart';

import 'breakpoint.dart';
import 'breakpoints_enum.dart';

/// [MediaQueryData] extension to get [BreakpointRange] and [BreakpointWindow].
extension BreakpointsMediaQueryExt on MediaQueryData {
  /// Get [Breakpoint] from [MediaQueryData].
  Breakpoint get breakpoint => Breakpoint.fromWidth(width: size.width);

  /// Get [BreakpointRange] from [MediaQueryData].
  BreakpointRange get breakpointRange => breakpoint.range;

  /// Get [BreakpointWindow] from [MediaQueryData].
  BreakpointWindow get breakpointWindow => breakpoint.window;

  /// Get the [int] of columns from [MediaQueryData].
  int get breakpointColumns => breakpoint.columns;

  /// Get the [int] of margins from [MediaQueryData].
  int get breakpointMargins => breakpoint.margins;

  /// Get the [int] of gutters from [MediaQueryData].
  int get breakpointGutters => breakpoint.gutters;
}
