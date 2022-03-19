import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/ext/breakpoints_enum_ext.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// Entity object for Breakpoint system.
///
/// See the breakpoint system documentation for more information.
/// [https://material.io/design/layout/responsive-layout-grid.html#breakpoints].
class Breakpoint {
  /// Generate [Breakpoint] from [width].
  factory Breakpoint.fromWidth(double width) => Breakpoint._(width);

  /// Generate [Breakpoint] from [Size].
  factory Breakpoint.fromSize(Size size) => Breakpoint.fromWidth(size.width);

  /// Generate [Breakpoint] from [BoxConstraints].
  factory Breakpoint.fromConstraints(BoxConstraints constraints) =>
      Breakpoint.fromWidth(constraints.maxWidth);

  const Breakpoint._(this._width);

  final double _width;

  /// Breakpoint screen size element of Breakpoint system.
  BreakpointScreenSize get screenSize =>
      BreakpointScreenSizeExt.screenSize(_width);

  /// margin element of Breakpoint system.
  double get margin => BreakpointScreenSizeExt.margin(_width);

  /// body element of Breakpoint system.
  double get body => BreakpointScreenSizeExt.body(_width);

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
