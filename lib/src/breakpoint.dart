import 'package:flutter/foundation.dart';

import 'breakpoints_enum.dart';
import 'breakpoints_enum_ext.dart';

/// Entity object for Breakpoint system.
///
/// See the breakpoint system documentation for more information.
/// [https://material.io/design/layout/responsive-layout-grid.html#breakpoints].
class Breakpoint {
  /// Generate [Breakpoint] from [width].
  factory Breakpoint.fromWidth({required double width}) => Breakpoint._(width);

  const Breakpoint._(this._width);

  final double _width;

  /// Breakpoint screen size element of Breakpoint system.
  BreakpointScreenSize get screenSize =>
      BreakpointScreenSizeExt.screenSize(width: _width);

  /// margin element of Breakpoint system.
  double get margin => BreakpointScreenSizeExt.margin(width: _width);

  /// body element of Breakpoint system.
  double get body => BreakpointScreenSizeExt.body(width: _width);

  /// columns element of Breakpoint system.
  int get column => screenSize.column;

  @override
  String toString() => 'Breakpoint('
      'range: ${describeEnum(screenSize)}, '
      'column: $column, '
      'margin: $margin, '
      'body: $body,'
      ')';
}
