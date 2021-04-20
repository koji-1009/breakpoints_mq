import 'package:flutter/widgets.dart';

import 'breakpoint.dart';
import 'breakpoints_enum.dart';
import 'breakpoints_operator_ext.dart';

/// [MediaQueryData] extension to get [BreakpointRange] and [BreakpointWindow].
extension BreakpointsMediaQueryExt on MediaQueryData {
  /// Get [Breakpoint] from [MediaQueryData].
  Breakpoint get breakpoint => Breakpoint.fromWidth(width: size.width);

  /// Get [BreakpointDevice] from [MediaQueryData].
  BreakpointDevice get device {
    switch (orientation) {
      case Orientation.portrait:
        if (breakpoint.range <= BreakpointRange.lessThan360) {
          return BreakpointDevice.smallHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan400) {
          return BreakpointDevice.mediumHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan600) {
          return BreakpointDevice.largeHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan720) {
          return BreakpointDevice.smallTablet;
        } else if (breakpoint.range <= BreakpointRange.lessThan960) {
          return BreakpointDevice.largeTablet;
        } else {
          return BreakpointDevice.desktop;
        }
      case Orientation.landscape:
        if (breakpoint.range <= BreakpointRange.lessThan600) {
          return BreakpointDevice.smallHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan720) {
          return BreakpointDevice.mediumHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan960) {
          return BreakpointDevice.largeHandset;
        } else if (breakpoint.range <= BreakpointRange.lessThan1024) {
          return BreakpointDevice.smallTablet;
        } else if (breakpoint.range <= BreakpointRange.lessThan1440) {
          return BreakpointDevice.largeTablet;
        } else {
          return BreakpointDevice.desktop;
        }
    }
  }

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
