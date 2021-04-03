import 'breakpoints_enum.dart';

/// Operator override for [BreakpointRange].
extension BreakpointRangeOperators on BreakpointRange {
  /// Whether this [BreakpointRange] is larger than [other].
  bool operator >(BreakpointRange other) => index > other.index;

  /// Whether this [BreakpointRange] is larger than or equal to [other].
  bool operator >=(BreakpointRange other) => index >= other.index;

  /// Whether this [BreakpointRange] is smaller than [other].
  bool operator <(BreakpointRange other) => index < other.index;

  /// Whether this [BreakpointRange] is smaller than or equal to [other].
  bool operator <=(BreakpointRange other) => index <= other.index;
}

/// Operator override for [BreakpointWindow].
extension BreakpointTypeOperators on BreakpointWindow {
  /// Whether this [BreakpointWindow] is larger than [other].
  bool operator >(BreakpointWindow other) => index > other.index;

  /// Whether this [BreakpointWindow] is larger than or equal to [other].
  bool operator >=(BreakpointWindow other) => index >= other.index;

  /// Whether this [BreakpointWindow] is smaller than [other].
  bool operator <(BreakpointWindow other) => index < other.index;

  /// Whether this [BreakpointWindow] is smaller than or equal to [other].
  bool operator <=(BreakpointWindow other) => index <= other.index;
}
