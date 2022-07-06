import 'package:dart_currencies/dart_currencies.dart';
import 'package:intl/intl.dart';

void main() {
  const usd = Currency.USD();
  final eur = Currency.fromCode(CurrencyCode.EUR);

  // formatting
  print(buildEnglishFormatter(usd).format(2500));
  print(buildEnglishFormatter(eur).format(2500));
  print(buildFrenchFormatter(eur).format(2500));
}

/// the formatters are from the intl library but prices work well with it.
NumberFormat buildFrenchFormatter(Currency currency) {
  return NumberFormat.currency(
    locale: 'fr',
    name: currency.code.name,
    symbol: currency.symbol,
  );
}

NumberFormat buildEnglishFormatter(Currency currency) {
  return NumberFormat.currency(
    locale: 'en',
    name: currency.code.name,
    symbol: currency.symbol,
  );
}
