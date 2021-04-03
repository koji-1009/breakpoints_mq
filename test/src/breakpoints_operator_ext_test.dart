import 'package:breakpoints/src/breakpoints_enum.dart';
import 'package:breakpoints/src/breakpoints_operator_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointRangeOperators', () {
    test('lessThan400', () {
      expect(
        BreakpointRange.lessThan400 > BreakpointRange.lessThan400,
        false,
      );
      expect(
        BreakpointRange.lessThan400 >= BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.lessThan400 < BreakpointRange.lessThan400,
        false,
      );
      expect(
        BreakpointRange.lessThan400 <= BreakpointRange.lessThan400,
        true,
      );

      expect(
        BreakpointRange.lessThan400 > BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.lessThan400 >= BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.lessThan400 < BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.lessThan400 <= BreakpointRange.lessThan960,
        true,
      );

      expect(
        BreakpointRange.lessThan400 > BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan400 >= BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan400 < BreakpointRange.lessThan1600,
        true,
      );
      expect(
        BreakpointRange.lessThan400 <= BreakpointRange.lessThan1600,
        true,
      );

      expect(
        BreakpointRange.lessThan400 > BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan400 >= BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan400 < BreakpointRange.oversize,
        true,
      );
      expect(
        BreakpointRange.lessThan400 <= BreakpointRange.oversize,
        true,
      );
    });

    test('lessThan960', () {
      expect(
        BreakpointRange.lessThan960 > BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.lessThan960 >= BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.lessThan960 < BreakpointRange.lessThan400,
        false,
      );
      expect(
        BreakpointRange.lessThan960 <= BreakpointRange.lessThan400,
        false,
      );

      expect(
        BreakpointRange.lessThan960 > BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.lessThan960 >= BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.lessThan960 < BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.lessThan960 <= BreakpointRange.lessThan960,
        true,
      );

      expect(
        BreakpointRange.lessThan960 > BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan960 >= BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan960 < BreakpointRange.lessThan1600,
        true,
      );
      expect(
        BreakpointRange.lessThan960 <= BreakpointRange.lessThan1600,
        true,
      );

      expect(
        BreakpointRange.lessThan960 > BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan960 >= BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan960 < BreakpointRange.oversize,
        true,
      );
      expect(
        BreakpointRange.lessThan960 <= BreakpointRange.oversize,
        true,
      );
    });

    test('lessThan1600', () {
      expect(
        BreakpointRange.lessThan1600 > BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 >= BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 < BreakpointRange.lessThan400,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 <= BreakpointRange.lessThan400,
        false,
      );

      expect(
        BreakpointRange.lessThan1600 > BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 >= BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 < BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 <= BreakpointRange.lessThan960,
        false,
      );

      expect(
        BreakpointRange.lessThan1600 > BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 >= BreakpointRange.lessThan1600,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 < BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 <= BreakpointRange.lessThan1600,
        true,
      );

      expect(
        BreakpointRange.lessThan1600 > BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 >= BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.lessThan1600 < BreakpointRange.oversize,
        true,
      );
      expect(
        BreakpointRange.lessThan1600 <= BreakpointRange.oversize,
        true,
      );
    });

    test('oversize', () {
      expect(
        BreakpointRange.oversize > BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.oversize >= BreakpointRange.lessThan400,
        true,
      );
      expect(
        BreakpointRange.oversize < BreakpointRange.lessThan400,
        false,
      );
      expect(
        BreakpointRange.oversize <= BreakpointRange.lessThan400,
        false,
      );

      expect(
        BreakpointRange.oversize > BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.oversize >= BreakpointRange.lessThan960,
        true,
      );
      expect(
        BreakpointRange.oversize < BreakpointRange.lessThan960,
        false,
      );
      expect(
        BreakpointRange.oversize <= BreakpointRange.lessThan960,
        false,
      );

      expect(
        BreakpointRange.oversize > BreakpointRange.lessThan1600,
        true,
      );
      expect(
        BreakpointRange.oversize >= BreakpointRange.lessThan1600,
        true,
      );
      expect(
        BreakpointRange.oversize < BreakpointRange.lessThan1600,
        false,
      );
      expect(
        BreakpointRange.oversize <= BreakpointRange.lessThan1600,
        false,
      );

      expect(
        BreakpointRange.oversize > BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.oversize >= BreakpointRange.oversize,
        true,
      );
      expect(
        BreakpointRange.oversize < BreakpointRange.oversize,
        false,
      );
      expect(
        BreakpointRange.oversize <= BreakpointRange.oversize,
        true,
      );
    });
  });

  group('BreakpointTypeOperators', () {
    test('xsmall', () {
      expect(
        BreakpointWindow.xsmall > BreakpointWindow.xsmall,
        false,
      );
      expect(
        BreakpointWindow.xsmall >= BreakpointWindow.xsmall,
        true,
      );
      expect(
        BreakpointWindow.xsmall < BreakpointWindow.xsmall,
        false,
      );
      expect(
        BreakpointWindow.xsmall <= BreakpointWindow.xsmall,
        true,
      );

      expect(
        BreakpointWindow.xsmall > BreakpointWindow.medium,
        false,
      );
      expect(
        BreakpointWindow.xsmall >= BreakpointWindow.medium,
        false,
      );
      expect(
        BreakpointWindow.xsmall < BreakpointWindow.medium,
        true,
      );
      expect(
        BreakpointWindow.xsmall <= BreakpointWindow.medium,
        true,
      );

      expect(
        BreakpointWindow.xsmall > BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.xsmall >= BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.xsmall < BreakpointWindow.xlarge,
        true,
      );
      expect(
        BreakpointWindow.xsmall <= BreakpointWindow.xlarge,
        true,
      );
    });

    test('medium', () {
      expect(
        BreakpointWindow.medium > BreakpointWindow.xsmall,
        true,
      );
      expect(
        BreakpointWindow.medium >= BreakpointWindow.xsmall,
        true,
      );
      expect(
        BreakpointWindow.medium < BreakpointWindow.xsmall,
        false,
      );
      expect(
        BreakpointWindow.medium <= BreakpointWindow.xsmall,
        false,
      );

      expect(
        BreakpointWindow.medium > BreakpointWindow.medium,
        false,
      );
      expect(
        BreakpointWindow.medium >= BreakpointWindow.medium,
        true,
      );
      expect(
        BreakpointWindow.medium < BreakpointWindow.medium,
        false,
      );
      expect(
        BreakpointWindow.medium <= BreakpointWindow.medium,
        true,
      );

      expect(
        BreakpointWindow.medium > BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.medium >= BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.medium < BreakpointWindow.xlarge,
        true,
      );
      expect(
        BreakpointWindow.medium <= BreakpointWindow.xlarge,
        true,
      );
    });

    test('xlarge', () {
      expect(
        BreakpointWindow.xlarge > BreakpointWindow.xsmall,
        true,
      );
      expect(
        BreakpointWindow.xlarge >= BreakpointWindow.xsmall,
        true,
      );
      expect(
        BreakpointWindow.xlarge < BreakpointWindow.xsmall,
        false,
      );
      expect(
        BreakpointWindow.xlarge <= BreakpointWindow.xsmall,
        false,
      );

      expect(
        BreakpointWindow.xlarge > BreakpointWindow.medium,
        true,
      );
      expect(
        BreakpointWindow.xlarge >= BreakpointWindow.medium,
        true,
      );
      expect(
        BreakpointWindow.xlarge < BreakpointWindow.medium,
        false,
      );
      expect(
        BreakpointWindow.xlarge <= BreakpointWindow.medium,
        false,
      );

      expect(
        BreakpointWindow.xlarge > BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.xlarge >= BreakpointWindow.xlarge,
        true,
      );
      expect(
        BreakpointWindow.xlarge < BreakpointWindow.xlarge,
        false,
      );
      expect(
        BreakpointWindow.xlarge <= BreakpointWindow.xlarge,
        true,
      );
    });
  });
}
