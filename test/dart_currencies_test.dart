import 'package:dart_currencies/dart_currencies.dart';
import 'package:test/test.dart';

void main() {
  group('Currency', () {
    test('Has equality', () {
      expect(
        Currency.fromCode(CurrencyCode.USD),
        equals(Currency.fromJson('USD')),
      );
    });
    test('Can be created from each code', () {
      for (final code in CurrencyCode.values) {
        final currency = Currency.fromCode(code);
        expect(currency, isA<Currency>());
      }
    });

    test('Can be created from each code as string', () {
      for (final code in CurrencyCode.values) {
        final currency = Currency.fromCode(code);
        expect(currency, isA<Currency>());
      }
    });

    test('Is serializable', () {
      for (final code in CurrencyCode.values) {
        final currency = Currency.fromCode(code);
        expect(currency, isA<Currency>());
      }
    });
  });
}
