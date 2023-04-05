import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/ext/breakpoints_operator_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointScreenSizeOperators', () {
    test('compact', () {
      expect(
        BreakpointScreenSize.compact > BreakpointScreenSize.compact,
        false,
      );
      expect(
        BreakpointScreenSize.compact >= BreakpointScreenSize.compact,
        true,
      );
      expect(
        BreakpointScreenSize.compact < BreakpointScreenSize.compact,
        false,
      );
      expect(
        BreakpointScreenSize.compact <= BreakpointScreenSize.compact,
        true,
      );

      expect(
        BreakpointScreenSize.compact > BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.compact >= BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.compact < BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.compact <= BreakpointScreenSize.medium,
        true,
      );

      expect(
        BreakpointScreenSize.compact > BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.compact >= BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.compact < BreakpointScreenSize.expanded,
        true,
      );
      expect(
        BreakpointScreenSize.compact <= BreakpointScreenSize.expanded,
        true,
      );
    });

    test('medium', () {
      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.compact,
        true,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.compact,
        true,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.compact,
        false,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.compact,
        false,
      );

      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.medium,
        true,
      );

      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.expanded,
        true,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.expanded,
        true,
      );
    });

    test('expanded', () {
      expect(
        BreakpointScreenSize.expanded > BreakpointScreenSize.compact,
        true,
      );
      expect(
        BreakpointScreenSize.expanded >= BreakpointScreenSize.compact,
        true,
      );
      expect(
        BreakpointScreenSize.expanded < BreakpointScreenSize.compact,
        false,
      );
      expect(
        BreakpointScreenSize.expanded <= BreakpointScreenSize.compact,
        false,
      );

      expect(
        BreakpointScreenSize.expanded > BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.expanded >= BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.expanded < BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.expanded <= BreakpointScreenSize.medium,
        false,
      );

      expect(
        BreakpointScreenSize.expanded > BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.expanded >= BreakpointScreenSize.expanded,
        true,
      );
      expect(
        BreakpointScreenSize.expanded < BreakpointScreenSize.expanded,
        false,
      );
      expect(
        BreakpointScreenSize.expanded <= BreakpointScreenSize.expanded,
        true,
      );
    });
  });
}
