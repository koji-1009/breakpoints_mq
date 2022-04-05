import 'package:breakpoints_mq/src/breakpoints_enum.dart';
import 'package:breakpoints_mq/src/ext/breakpoints_operator_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BreakpointScreenSizeOperators', () {
    test('extraSmall', () {
      expect(
        BreakpointScreenSize.extraSmall > BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall >= BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.extraSmall < BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall <= BreakpointScreenSize.extraSmall,
        true,
      );

      expect(
        BreakpointScreenSize.extraSmall > BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall >= BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall < BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.extraSmall <= BreakpointScreenSize.smallScaleBody,
        true,
      );

      expect(
        BreakpointScreenSize.extraSmall > BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall >= BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall < BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.extraSmall <= BreakpointScreenSize.smallFixBody,
        true,
      );

      expect(
        BreakpointScreenSize.extraSmall > BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall >= BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall < BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.extraSmall <= BreakpointScreenSize.medium,
        true,
      );

      expect(
        BreakpointScreenSize.extraSmall > BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall >= BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.extraSmall < BreakpointScreenSize.large,
        true,
      );
      expect(
        BreakpointScreenSize.extraSmall <= BreakpointScreenSize.large,
        true,
      );
    });

    test('smallScaleBody', () {
      expect(
        BreakpointScreenSize.smallScaleBody > BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody >= BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody < BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <= BreakpointScreenSize.extraSmall,
        false,
      );

      expect(
        BreakpointScreenSize.smallScaleBody >
            BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody >=
            BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <
            BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <=
            BreakpointScreenSize.smallScaleBody,
        true,
      );

      expect(
        BreakpointScreenSize.smallScaleBody > BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody >=
            BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody < BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <=
            BreakpointScreenSize.smallFixBody,
        true,
      );

      expect(
        BreakpointScreenSize.smallScaleBody > BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody >= BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody < BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <= BreakpointScreenSize.medium,
        true,
      );

      expect(
        BreakpointScreenSize.smallScaleBody > BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody >= BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.smallScaleBody < BreakpointScreenSize.large,
        true,
      );
      expect(
        BreakpointScreenSize.smallScaleBody <= BreakpointScreenSize.large,
        true,
      );
    });

    test('smallFixBody', () {
      expect(
        BreakpointScreenSize.smallFixBody > BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody >= BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody < BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody <= BreakpointScreenSize.extraSmall,
        false,
      );

      expect(
        BreakpointScreenSize.smallFixBody > BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody >=
            BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody < BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody <=
            BreakpointScreenSize.smallScaleBody,
        false,
      );

      expect(
        BreakpointScreenSize.smallFixBody > BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody >= BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody < BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody <= BreakpointScreenSize.smallFixBody,
        true,
      );

      expect(
        BreakpointScreenSize.smallFixBody > BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody >= BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody < BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody <= BreakpointScreenSize.medium,
        true,
      );

      expect(
        BreakpointScreenSize.smallFixBody > BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody >= BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.smallFixBody < BreakpointScreenSize.large,
        true,
      );
      expect(
        BreakpointScreenSize.smallFixBody <= BreakpointScreenSize.large,
        true,
      );
    });

    test('medium', () {
      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.extraSmall,
        false,
      );

      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.smallScaleBody,
        false,
      );

      expect(
        BreakpointScreenSize.medium > BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.smallFixBody,
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
        BreakpointScreenSize.large > BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.medium >= BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.medium < BreakpointScreenSize.large,
        true,
      );
      expect(
        BreakpointScreenSize.medium <= BreakpointScreenSize.large,
        true,
      );
    });

    test('large', () {
      expect(
        BreakpointScreenSize.large > BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.large >= BreakpointScreenSize.extraSmall,
        true,
      );
      expect(
        BreakpointScreenSize.large < BreakpointScreenSize.extraSmall,
        false,
      );
      expect(
        BreakpointScreenSize.large <= BreakpointScreenSize.extraSmall,
        false,
      );

      expect(
        BreakpointScreenSize.large > BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.large >= BreakpointScreenSize.smallScaleBody,
        true,
      );
      expect(
        BreakpointScreenSize.large < BreakpointScreenSize.smallScaleBody,
        false,
      );
      expect(
        BreakpointScreenSize.large <= BreakpointScreenSize.smallScaleBody,
        false,
      );

      expect(
        BreakpointScreenSize.large > BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.large >= BreakpointScreenSize.smallFixBody,
        true,
      );
      expect(
        BreakpointScreenSize.large < BreakpointScreenSize.smallFixBody,
        false,
      );
      expect(
        BreakpointScreenSize.large <= BreakpointScreenSize.smallFixBody,
        false,
      );

      expect(
        BreakpointScreenSize.large > BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.large >= BreakpointScreenSize.medium,
        true,
      );
      expect(
        BreakpointScreenSize.large < BreakpointScreenSize.medium,
        false,
      );
      expect(
        BreakpointScreenSize.large <= BreakpointScreenSize.medium,
        false,
      );

      expect(
        BreakpointScreenSize.large > BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.large >= BreakpointScreenSize.large,
        true,
      );
      expect(
        BreakpointScreenSize.large < BreakpointScreenSize.large,
        false,
      );
      expect(
        BreakpointScreenSize.large <= BreakpointScreenSize.large,
        true,
      );
    });
  });
}
