import 'package:flutter/foundation.dart';

import '../breakpoints_mq.dart';

/// Entity object for Breakpoint system.
///
/// See the breakpoint system documentation for more information.
/// [https://material.io/design/layout/responsive-layout-grid.html#breakpoints].
class Breakpoint {
  /// Generate [Breakpoint] from [width].
  factory Breakpoint.fromWidth({required double width}) =>
      Breakpoint._(BreakpointRangeExt.range(width: width));

  const Breakpoint._(this.range);

  /// Breakpoint range element of Breakpoint system.
  final BreakpointRange range;

  /// window element of Breakpoint system.
  BreakpointWindow get window => range.window;

  /// columns element of Breakpoint system.
  int get columns => range.columns;

  /// margins element of Breakpoint system.
  int get margins => range.margins;

  /// gutters element of Breakpoint system.
  int get gutters => range.gutters;

  @override
  String toString() => 'Breakpoint(range: ${describeEnum(range)}, '
      'window: ${describeEnum(window)}, '
      'columns: $columns, '
      'margins: $margins, '
      'gutters: $gutters)';
}
