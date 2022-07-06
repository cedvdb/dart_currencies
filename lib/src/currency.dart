// ignore_for_file: non_constant_identifier_names

import 'currency_code.enum.dart';

part 'currency_map.dart';

class Currency {
  /// The ISO-4217 currency code (e.g. USD).
  final CurrencyCode code;

  /// The ISO-4217 currency number (e.g. 840, for USD).
  final int number;

  /// The length of the fraction part of a currency.
  ///
  /// - for `134.23` it will be `2`
  /// - for `165` it will be `0`
  /// - for `111.2` it will be `1`
  final int digits;

  /// The currency name (e.g. US Dollar).
  final String name;

  /// The currency symbol (e.g. $).
  final String symbol;

  /// Constructs currency.
  ///
  /// Currency instance is immutable.
  const Currency._({
    required this.code,
    required this.number,
    required this.digits,
    required this.name,
    required this.symbol,
  });

  /// Finds currency by ISO-4217 currency code (e.g. CurrencyCode.USD).
  factory Currency.fromCode(
    /// ISO-4217 code to look for.
    CurrencyCode code,
  ) =>
      currencyMap[code.name]!;

  @override
  String toString() {
    return 'Currency(code: $code, number: $number, digits: $digits, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Currency &&
        other.code == code &&
        other.number == number &&
        other.digits == digits &&
        other.name == name &&
        other.symbol == symbol;
  }

  @override
  int get hashCode {
    return code.hashCode ^
        number.hashCode ^
        digits.hashCode ^
        name.hashCode ^
        symbol.hashCode;
  }

  String toJson() => code.name;

  factory Currency.fromJson(String code) => currencyMap[code]!;

  const Currency.AED()
      : this._(
          name: 'Emirati Dirham',
          code: CurrencyCode.AED,
          number: 784,
          digits: 2,
          symbol: r'د.إ',
        );
  const Currency.AFN()
      : this._(
          name: 'Afghan Afghani',
          code: CurrencyCode.AFN,
          number: 971,
          digits: 2,
          symbol: r'؋',
        );
  const Currency.ALL()
      : this._(
          name: 'Albanian Lek',
          code: CurrencyCode.ALL,
          number: 8,
          digits: 2,
          symbol: r'L',
        );
  const Currency.AMD()
      : this._(
          name: 'Armenian Dram',
          code: CurrencyCode.AMD,
          number: 51,
          digits: 2,
          symbol: r'դր.',
        );
  const Currency.ANG()
      : this._(
          name: 'Dutch Guilder',
          code: CurrencyCode.ANG,
          number: 532,
          digits: 2,
          symbol: r'ƒ',
        );
  const Currency.AOA()
      : this._(
          name: 'Angolan Kwanza',
          code: CurrencyCode.AOA,
          number: 973,
          digits: 2,
          symbol: r'Kz',
        );
  const Currency.ARS()
      : this._(
          name: 'Argentine Peso',
          code: CurrencyCode.ARS,
          number: 32,
          digits: 2,
          symbol: r'$',
        );
  const Currency.AUD()
      : this._(
          name: 'Australian Dollar',
          code: CurrencyCode.AUD,
          number: 36,
          digits: 2,
          symbol: r'$',
        );
  const Currency.AWG()
      : this._(
          name: 'Aruba Guilder',
          code: CurrencyCode.AWG,
          number: 533,
          digits: 2,
          symbol: r'ƒ',
        );
  const Currency.AZN()
      : this._(
          name: 'Azerbaijan Manat',
          code: CurrencyCode.AZN,
          number: 944,
          digits: 2,
          symbol: r'₼',
        );
  const Currency.BAM()
      : this._(
          name: 'Bosnian Convertible Marka',
          code: CurrencyCode.BAM,
          number: 977,
          digits: 2,
          symbol: r'KM',
        );
  const Currency.BBD()
      : this._(
          name: 'Barbadian Dollar',
          code: CurrencyCode.BBD,
          number: 52,
          digits: 2,
          symbol: r'$',
        );
  const Currency.BDT()
      : this._(
          name: 'Bangladeshi Taka',
          code: CurrencyCode.BDT,
          number: 50,
          digits: 2,
          symbol: r'৳',
        );
  const Currency.BGN()
      : this._(
          name: 'Bulgarian Lev',
          code: CurrencyCode.BGN,
          number: 975,
          digits: 2,
          symbol: r'лв.',
        );
  const Currency.BIF()
      : this._(
          name: 'Burundian Franc',
          code: CurrencyCode.BIF,
          number: 108,
          digits: 0,
          symbol: r'Fr',
        );
  const Currency.BMD()
      : this._(
          name: 'Bermudian Dollar',
          code: CurrencyCode.BMD,
          number: 60,
          digits: 2,
          symbol: r'$',
        );
  const Currency.BND()
      : this._(
          name: 'Brunei Dollar',
          code: CurrencyCode.BND,
          number: 96,
          digits: 2,
          symbol: r'$',
        );
  const Currency.BOB()
      : this._(
          name: 'Bolivian Boliviano',
          code: CurrencyCode.BOB,
          number: 68,
          digits: 2,
          symbol: r'$b',
        );
  const Currency.BRL()
      : this._(
          name: 'Brazilian Real',
          code: CurrencyCode.BRL,
          number: 986,
          digits: 2,
          symbol: r'R$',
        );
  const Currency.BSD()
      : this._(
          name: 'Bahamian Dollar',
          code: CurrencyCode.BSD,
          number: 44,
          digits: 2,
          symbol: r'B$',
        );
  const Currency.BWP()
      : this._(
          name: 'Botswana Pula',
          code: CurrencyCode.BWP,
          number: 72,
          digits: 2,
          symbol: r'P',
        );
  const Currency.BZD()
      : this._(
          name: 'Belize Dollar',
          code: CurrencyCode.BZD,
          number: 84,
          digits: 2,
          symbol: r'$',
        );
  const Currency.CAD()
      : this._(
          name: 'Canadian Dollar',
          code: CurrencyCode.CAD,
          number: 124,
          digits: 2,
          symbol: r'$',
        );
  const Currency.CDF()
      : this._(
          name: 'Congolese franc',
          code: CurrencyCode.CDF,
          number: 976,
          digits: 2,
          symbol: r'Fr',
        );
  const Currency.CHF()
      : this._(
          name: 'Swiss Franc',
          code: CurrencyCode.CHF,
          number: 756,
          digits: 2,
          symbol: r'CHF',
        );
  const Currency.CLP()
      : this._(
          name: 'Chilean Peso',
          code: CurrencyCode.CLP,
          number: 152,
          digits: 0,
          symbol: r'$',
        );
  const Currency.CNY()
      : this._(
          name: 'Chinese Yuan',
          code: CurrencyCode.CNY,
          number: 156,
          digits: 2,
          symbol: r'¥',
        );
  const Currency.COP()
      : this._(
          name: 'Colombian Peso',
          code: CurrencyCode.COP,
          number: 170,
          digits: 2,
          symbol: r'$',
        );
  const Currency.CRC()
      : this._(
          name: 'Costa Rican Colón',
          code: CurrencyCode.CRC,
          number: 188,
          digits: 2,
          symbol: r'₡',
        );
  const Currency.CVE()
      : this._(
          name: 'Cape Verdean Escudo',
          code: CurrencyCode.CVE,
          number: 132,
          digits: 2,
          symbol: r'Esc',
        );
  const Currency.CZK()
      : this._(
          name: 'Czech Koruna',
          code: CurrencyCode.CZK,
          number: 203,
          digits: 2,
          symbol: r'Kč',
        );
  const Currency.DJF()
      : this._(
          name: 'Djiboutian Franc',
          code: CurrencyCode.DJF,
          number: 262,
          digits: 0,
          symbol: r'Fdj',
        );
  const Currency.DKK()
      : this._(
          name: 'Danish Krone',
          code: CurrencyCode.DKK,
          number: 208,
          digits: 2,
          symbol: r'kr',
        );
  const Currency.DOP()
      : this._(
          name: 'Dominican Peso',
          code: CurrencyCode.DOP,
          number: 214,
          digits: 2,
          symbol: r'RD$',
        );
  const Currency.DZD()
      : this._(
          name: 'Algerian Dinar',
          code: CurrencyCode.DZD,
          number: 12,
          digits: 2,
          symbol: r'د.ج',
        );
  const Currency.EGP()
      : this._(
          name: 'Egyptian Pound',
          code: CurrencyCode.EGP,
          number: 818,
          digits: 2,
          symbol: r'ج.م',
        );
  const Currency.ETB()
      : this._(
          name: 'Ethiopian Birr',
          code: CurrencyCode.ETB,
          number: 230,
          digits: 2,
          symbol: r'ብር',
        );
  const Currency.EUR()
      : this._(
          name: 'Euro',
          code: CurrencyCode.EUR,
          number: 978,
          digits: 2,
          symbol: r'€',
        );
  const Currency.FJD()
      : this._(
          name: 'Fijian Dollar',
          code: CurrencyCode.FJD,
          number: 242,
          digits: 2,
          symbol: r'$',
        );
  const Currency.FKP()
      : this._(
          name: 'Falkland Islands Pound',
          code: CurrencyCode.FKP,
          number: 238,
          digits: 2,
          symbol: r'FK£',
        );
  const Currency.GBP()
      : this._(
          name: 'British Pound',
          code: CurrencyCode.GBP,
          number: 826,
          digits: 2,
          symbol: r'£',
        );
  const Currency.GEL()
      : this._(
          name: 'Georgian Lari',
          code: CurrencyCode.GEL,
          number: 981,
          digits: 2,
          symbol: r'ლ',
        );
  const Currency.GIP()
      : this._(
          name: 'Gibraltar Pound',
          code: CurrencyCode.GIP,
          number: 292,
          digits: 2,
          symbol: r'£',
        );
  const Currency.GMD()
      : this._(
          name: 'Gambian Dalasi',
          code: CurrencyCode.GMD,
          number: 270,
          digits: 2,
          symbol: r'D',
        );
  const Currency.GNF()
      : this._(
          name: 'Guinean Franc',
          code: CurrencyCode.GNF,
          number: 324,
          digits: 0,
          symbol: r'Fr',
        );
  const Currency.GTQ()
      : this._(
          name: 'Guatemalan Quetzal',
          code: CurrencyCode.GTQ,
          number: 320,
          digits: 2,
          symbol: r'Q',
        );
  const Currency.GYD()
      : this._(
          name: 'Guyanese Dollar',
          code: CurrencyCode.GYD,
          number: 328,
          digits: 2,
          symbol: r'$',
        );
  const Currency.HKD()
      : this._(
          name: 'Hong Kong Dollar',
          code: CurrencyCode.HKD,
          number: 344,
          digits: 2,
          symbol: r'$',
        );
  const Currency.HNL()
      : this._(
          name: 'Honduran Lempira',
          code: CurrencyCode.HNL,
          number: 340,
          digits: 2,
          symbol: r'L',
        );
  const Currency.HRK()
      : this._(
          name: 'Croatian Kuna',
          code: CurrencyCode.HRK,
          number: 191,
          digits: 2,
          symbol: r'kn',
        );
  const Currency.HTG()
      : this._(
          name: 'Haitian Gourde',
          code: CurrencyCode.HTG,
          number: 332,
          digits: 2,
          symbol: r'G',
        );
  const Currency.HUF()
      : this._(
          name: 'Hungarian Forint',
          code: CurrencyCode.HUF,
          number: 348,
          digits: 2,
          symbol: r'Ft',
        );
  const Currency.ILS()
      : this._(
          name: 'Israeli New Shekel',
          code: CurrencyCode.ILS,
          number: 376,
          digits: 2,
          symbol: r'₪',
        );
  const Currency.INR()
      : this._(
          name: 'Indian Rupee',
          code: CurrencyCode.INR,
          number: 356,
          digits: 2,
          symbol: r'₹',
        );
  const Currency.ISK()
      : this._(
          name: 'Icelandic Krona',
          code: CurrencyCode.ISK,
          number: 352,
          digits: 0,
          symbol: r'ISK',
        );
  const Currency.JMD()
      : this._(
          name: 'Jamaican Dollar',
          code: CurrencyCode.JMD,
          number: 388,
          digits: 2,
          symbol: r'$',
        );
  const Currency.JPY()
      : this._(
          name: 'Japanese Yen',
          code: CurrencyCode.JPY,
          number: 392,
          digits: 0,
          symbol: r'¥',
        );
  const Currency.KES()
      : this._(
          name: 'Kenyan Shilling',
          code: CurrencyCode.KES,
          number: 404,
          digits: 2,
          symbol: r'KSh',
        );
  const Currency.KGS()
      : this._(
          name: 'Kyrgyzstani Som',
          code: CurrencyCode.KGS,
          number: 417,
          digits: 2,
          symbol: r'лв',
        );
  const Currency.KHR()
      : this._(
          name: 'Cambodian Riel',
          code: CurrencyCode.KHR,
          number: 116,
          digits: 2,
          symbol: r'៛',
        );
  const Currency.KMF()
      : this._(
          name: 'Comorian Franc',
          code: CurrencyCode.KMF,
          number: 174,
          digits: 0,
          symbol: r'Fr',
        );
  const Currency.KRW()
      : this._(
          name: 'South Korean Won',
          code: CurrencyCode.KRW,
          number: 410,
          digits: 0,
          symbol: r'₩',
        );
  const Currency.KYD()
      : this._(
          name: 'Cayman Islands Dollar',
          code: CurrencyCode.KYD,
          number: 136,
          digits: 2,
          symbol: r'$',
        );
  const Currency.KZT()
      : this._(
          name: 'Kazakhstani Tenge',
          code: CurrencyCode.KZT,
          number: 398,
          digits: 2,
          symbol: r'₸',
        );
  const Currency.LAK()
      : this._(
          name: 'Lao Kip',
          code: CurrencyCode.LAK,
          number: 418,
          digits: 2,
          symbol: r'₭',
        );
  const Currency.LBP()
      : this._(
          name: 'Lebanese Pound',
          code: CurrencyCode.LBP,
          number: 422,
          digits: 2,
          symbol: r'LL',
        );
  const Currency.LKR()
      : this._(
          name: 'Sri Lankan Rupee',
          code: CurrencyCode.LKR,
          number: 144,
          digits: 2,
          symbol: r'Rs',
        );
  const Currency.LRD()
      : this._(
          name: 'Liberian Dollar',
          code: CurrencyCode.LRD,
          number: 430,
          digits: 2,
          symbol: r'$',
        );
  const Currency.LSL()
      : this._(
          name: 'Lesotho loti',
          code: CurrencyCode.LSL,
          number: 426,
          digits: 2,
          symbol: r'L',
        );
  const Currency.MAD()
      : this._(
          name: 'Moroccan Dirham',
          code: CurrencyCode.MAD,
          number: 504,
          digits: 2,
          symbol: r'DH',
        );
  const Currency.MDL()
      : this._(
          name: 'Moldovan Leu',
          code: CurrencyCode.MDL,
          number: 498,
          digits: 2,
          symbol: r'MDL',
        );
  const Currency.MGA()
      : this._(
          name: 'Malagasy Ariary',
          code: CurrencyCode.MGA,
          number: 969,
          digits: 2,
          symbol: r'Ar',
        );
  const Currency.MKD()
      : this._(
          name: 'Macedonian Denar',
          code: CurrencyCode.MKD,
          number: 807,
          digits: 2,
          symbol: r'ден',
        );
  const Currency.MMK()
      : this._(
          name: 'Myanmar Kyat',
          code: CurrencyCode.MMK,
          number: 104,
          digits: 2,
          symbol: r'K',
        );
  const Currency.MNT()
      : this._(
          name: 'Mongolian Tughrik',
          code: CurrencyCode.MNT,
          number: 496,
          digits: 2,
          symbol: r'₮',
        );
  const Currency.MOP()
      : this._(
          name: 'Macanese Pataca',
          code: CurrencyCode.MOP,
          number: 446,
          digits: 2,
          symbol: r'MOP',
        );
  const Currency.MUR()
      : this._(
          name: 'Mauritian Rupee',
          code: CurrencyCode.MUR,
          number: 480,
          digits: 2,
          symbol: r'Ɍs',
        );
  const Currency.MVR()
      : this._(
          name: 'Maldivian Rufiyaa',
          code: CurrencyCode.MVR,
          number: 462,
          digits: 2,
          symbol: r'Rf',
        );
  const Currency.MWK()
      : this._(
          name: 'Malawian Kwacha',
          code: CurrencyCode.MWK,
          number: 454,
          digits: 2,
          symbol: r'MK',
        );
  const Currency.MXN()
      : this._(
          name: 'Mexican Peso',
          code: CurrencyCode.MXN,
          number: 484,
          digits: 2,
          symbol: r'$',
        );
  const Currency.MYR()
      : this._(
          name: 'Malaysian Ringgit',
          code: CurrencyCode.MYR,
          number: 458,
          digits: 2,
          symbol: r'RM',
        );
  const Currency.MZN()
      : this._(
          name: 'Mozambican Metical',
          code: CurrencyCode.MZN,
          number: 943,
          digits: 2,
          symbol: r'MT',
        );
  const Currency.NAD()
      : this._(
          name: 'Namibian Dollar',
          code: CurrencyCode.NAD,
          number: 516,
          digits: 2,
          symbol: r'$',
        );
  const Currency.NGN()
      : this._(
          name: 'Nigerian Naira',
          code: CurrencyCode.NGN,
          number: 566,
          digits: 2,
          symbol: r'₦',
        );
  const Currency.NIO()
      : this._(
          name: 'Nicaraguan Córdoba',
          code: CurrencyCode.NIO,
          number: 558,
          digits: 2,
          symbol: r'C$',
        );
  const Currency.NOK()
      : this._(
          name: 'Norwegian Krone',
          code: CurrencyCode.NOK,
          number: 578,
          digits: 2,
          symbol: r'kr',
        );
  const Currency.NPR()
      : this._(
          name: 'Nepalese Rupee',
          code: CurrencyCode.NPR,
          number: 524,
          digits: 2,
          symbol: r'रु',
        );
  const Currency.NZD()
      : this._(
          name: 'New Zealand Dollar',
          code: CurrencyCode.NZD,
          number: 554,
          digits: 2,
          symbol: r'$',
        );
  const Currency.PAB()
      : this._(
          name: 'Panamanian Balboa',
          code: CurrencyCode.PAB,
          number: 590,
          digits: 2,
          symbol: r'B/.',
        );
  const Currency.PEN()
      : this._(
          name: 'Peruvian Sol',
          code: CurrencyCode.PEN,
          number: 604,
          digits: 2,
          symbol: r'S/.',
        );
  const Currency.PGK()
      : this._(
          name: 'Papua New Guinean Kina',
          code: CurrencyCode.PGK,
          number: 598,
          digits: 2,
          symbol: r'K',
        );
  const Currency.PHP()
      : this._(
          name: 'Philippine Peso',
          code: CurrencyCode.PHP,
          number: 608,
          digits: 2,
          symbol: r'₱',
        );
  const Currency.PKR()
      : this._(
          name: 'Pakistani Rupee',
          code: CurrencyCode.PKR,
          number: 586,
          digits: 2,
          symbol: r'Rs',
        );
  const Currency.PLN()
      : this._(
          name: 'Polish Zloty',
          code: CurrencyCode.PLN,
          number: 985,
          digits: 2,
          symbol: r'zł',
        );
  const Currency.PYG()
      : this._(
          name: 'Paraguayan Guarani',
          code: CurrencyCode.PYG,
          number: 600,
          digits: 0,
          symbol: r'₲',
        );
  const Currency.QAR()
      : this._(
          name: 'Qatari Riyal',
          code: CurrencyCode.QAR,
          number: 634,
          digits: 2,
          symbol: r'ر.ق',
        );
  const Currency.RON()
      : this._(
          name: 'Romanian Leu',
          code: CurrencyCode.RON,
          number: 946,
          digits: 2,
          symbol: r'lei',
        );
  const Currency.RSD()
      : this._(
          name: 'Serbian Diner',
          code: CurrencyCode.RSD,
          number: 941,
          digits: 2,
          symbol: r'Дин',
        );
  const Currency.RUB()
      : this._(
          name: 'Russian Rubel',
          code: CurrencyCode.RUB,
          number: 643,
          digits: 2,
          symbol: r'руб',
        );
  const Currency.RWF()
      : this._(
          name: 'Rwandan Franc',
          code: CurrencyCode.RWF,
          number: 646,
          digits: 0,
          symbol: r'FRw',
        );
  const Currency.SAR()
      : this._(
          name: 'Saudi Arabian Riyal',
          code: CurrencyCode.SAR,
          number: 682,
          digits: 2,
          symbol: r'ر.س',
        );
  const Currency.SBD()
      : this._(
          name: 'Solomon Islands Dollar',
          code: CurrencyCode.SBD,
          number: 90,
          digits: 2,
          symbol: r'$',
        );
  const Currency.SCR()
      : this._(
          name: 'Seychellois Rupee',
          code: CurrencyCode.SCR,
          number: 690,
          digits: 2,
          symbol: r'Ɍs',
        );
  const Currency.SEK()
      : this._(
          name: 'Swedish Krona',
          code: CurrencyCode.SEK,
          number: 752,
          digits: 2,
          symbol: r'kr',
        );
  const Currency.SGD()
      : this._(
          name: 'Singapore Dollar',
          code: CurrencyCode.SGD,
          number: 702,
          digits: 2,
          symbol: r'$',
        );
  const Currency.SLL()
      : this._(
          name: 'Sierra Leonean Leone',
          code: CurrencyCode.SLL,
          number: 694,
          digits: 2,
          symbol: r'Le',
        );
  const Currency.SOS()
      : this._(
          name: 'Somali Shilling',
          code: CurrencyCode.SOS,
          number: 706,
          digits: 2,
          symbol: r'SOS',
        );
  const Currency.SRD()
      : this._(
          name: 'Surinamese Dollar',
          code: CurrencyCode.SRD,
          number: 968,
          digits: 2,
          symbol: r'$',
        );
  const Currency.SVC()
      : this._(
          name: 'Salvadoran Colón',
          code: CurrencyCode.SVC,
          number: 222,
          digits: 2,
          symbol: r'SVC',
        );
  const Currency.SZL()
      : this._(
          name: 'Swazi Lilangeni',
          code: CurrencyCode.SZL,
          number: 748,
          digits: 2,
          symbol: r'SZL',
        );
  const Currency.THB()
      : this._(
          name: 'Thai Baht',
          code: CurrencyCode.THB,
          number: 764,
          digits: 2,
          symbol: r'฿',
        );
  const Currency.TJS()
      : this._(
          name: 'Tajikistani Somoni',
          code: CurrencyCode.TJS,
          number: 972,
          digits: 2,
          symbol: r'TJS',
        );
  const Currency.TOP()
      : this._(
          name: 'Tongan Paanga',
          code: CurrencyCode.TOP,
          number: 776,
          digits: 2,
          symbol: r'T$',
        );
  const Currency.TRY()
      : this._(
          name: 'Turkish Lira',
          code: CurrencyCode.TRY,
          number: 949,
          digits: 2,
          symbol: r'TL',
        );
  const Currency.TTD()
      : this._(
          name: 'Trinidad and Tobago Dollar',
          code: CurrencyCode.TTD,
          number: 780,
          digits: 2,
          symbol: r'$',
        );
  const Currency.TWD()
      : this._(
          name: 'Taiwan New Dollar',
          code: CurrencyCode.TWD,
          number: 901,
          digits: 2,
          symbol: r'$',
        );
  const Currency.TZS()
      : this._(
          name: 'Tanzanian Shilling',
          code: CurrencyCode.TZS,
          number: 834,
          digits: 2,
          symbol: r'TSh',
        );
  const Currency.UAH()
      : this._(
          name: 'Ukrainian Hryvnia',
          code: CurrencyCode.UAH,
          number: 980,
          digits: 2,
          symbol: r'₴',
        );
  const Currency.UGX()
      : this._(
          name: 'Ugandan Shilling',
          code: CurrencyCode.UGX,
          number: 800,
          digits: 0,
          symbol: r'USh',
        );
  const Currency.USD()
      : this._(
          name: 'US Dollar',
          code: CurrencyCode.USD,
          number: 840,
          digits: 2,
          symbol: r'$',
        );
  const Currency.UYU()
      : this._(
          name: 'Uruguayan Peso',
          code: CurrencyCode.UYU,
          number: 858,
          digits: 2,
          symbol: r'$',
        );
  const Currency.UZS()
      : this._(
          name: 'Uzbekistani Som',
          code: CurrencyCode.UZS,
          number: 860,
          digits: 2,
          symbol: r'лв',
        );
  const Currency.VND()
      : this._(
          name: 'Vietnamese Đồng',
          code: CurrencyCode.VND,
          number: 704,
          digits: 0,
          symbol: r'₫',
        );
  const Currency.VUV()
      : this._(
          name: 'Vanuatu vatu',
          code: CurrencyCode.VUV,
          number: 548,
          digits: 0,
          symbol: r'VT',
        );
  const Currency.WST()
      : this._(
          name: 'Samoan Tala',
          code: CurrencyCode.WST,
          number: 882,
          digits: 2,
          symbol: r'WST',
        );
  const Currency.XAF()
      : this._(
          name: 'Central African Franc',
          code: CurrencyCode.XAF,
          number: 950,
          digits: 0,
          symbol: r'Fr',
        );
  const Currency.XCD()
      : this._(
          name: 'East Caribbean Dollar',
          code: CurrencyCode.XCD,
          number: 951,
          digits: 2,
          symbol: r'$',
        );
  const Currency.XOF()
      : this._(
          name: 'West African Franc',
          code: CurrencyCode.XOF,
          number: 952,
          digits: 0,
          symbol: r'XOF',
        );
  const Currency.XPF()
      : this._(
          name: 'CFP Franc',
          code: CurrencyCode.XPF,
          number: 953,
          digits: 0,
          symbol: r'Fr',
        );
  const Currency.YER()
      : this._(
          name: 'Yemeni Rial',
          code: CurrencyCode.YER,
          number: 886,
          digits: 2,
          symbol: r'﷼',
        );
  const Currency.ZAR()
      : this._(
          name: 'South African Rand',
          code: CurrencyCode.ZAR,
          number: 710,
          digits: 2,
          symbol: r'R',
        );
  const Currency.ZMW()
      : this._(
          name: 'Zambian Kwacha',
          code: CurrencyCode.ZMW,
          number: 967,
          digits: 2,
          symbol: r'ZMW',
        );
  const Currency.BHD()
      : this._(
          name: 'Bahraini Dinar',
          code: CurrencyCode.BHD,
          number: 48,
          digits: 3,
          symbol: r'.د.ب',
        );
  const Currency.BTN()
      : this._(
          name: 'Ngultrum',
          code: CurrencyCode.BTN,
          number: 64,
          digits: 2,
          symbol: r'Nu.',
        );
  const Currency.CUP()
      : this._(
          name: 'Cuban Peso',
          code: CurrencyCode.CUP,
          number: 192,
          digits: 2,
          symbol: r'$MN',
        );
  const Currency.ERN()
      : this._(
          name: 'Nakfa',
          code: CurrencyCode.ERN,
          number: 232,
          digits: 2,
          symbol: r'Nkf',
        );
  const Currency.IDR()
      : this._(
          name: 'Rupiah',
          code: CurrencyCode.IDR,
          number: 360,
          digits: 2,
          symbol: r'Rp',
        );
  const Currency.IRR()
      : this._(
          name: 'Iranian Rial',
          code: CurrencyCode.IRR,
          number: 364,
          digits: 2,
          symbol: r'﷼',
        );
  const Currency.IQD()
      : this._(
          name: 'Iraqi Dinar',
          code: CurrencyCode.IQD,
          number: 368,
          digits: 3,
          symbol: r'د.ع',
        );
  const Currency.JOD()
      : this._(
          name: 'Jordanian Dinar',
          code: CurrencyCode.JOD,
          number: 400,
          digits: 3,
          symbol: r'د.أ',
        );
  const Currency.KPW()
      : this._(
          name: 'North Korean Won',
          code: CurrencyCode.KPW,
          number: 408,
          digits: 2,
          symbol: r'₩',
        );
  const Currency.KWD()
      : this._(
          name: 'Kuwaiti Dinar',
          code: CurrencyCode.KWD,
          number: 414,
          digits: 3,
          symbol: r'د.ك',
        );
  const Currency.LYD()
      : this._(
          name: 'Libyan Dinar',
          code: CurrencyCode.LYD,
          number: 434,
          digits: 3,
          symbol: r'ل.د',
        );
  const Currency.OMR()
      : this._(
          name: 'Rial Omani',
          code: CurrencyCode.OMR,
          number: 512,
          digits: 3,
          symbol: r'ر.ع.',
        );
  const Currency.SHP()
      : this._(
          name: 'Saint Helena Pound',
          code: CurrencyCode.SHP,
          number: 654,
          digits: 2,
          symbol: r'£',
        );
  const Currency.SSP()
      : this._(
          name: 'South Sudanese Pound',
          code: CurrencyCode.SSP,
          number: 728,
          digits: 2,
          symbol: r'SS£',
        );
  const Currency.SYP()
      : this._(
          name: 'Syrian Pound',
          code: CurrencyCode.SYP,
          number: 760,
          digits: 2,
          symbol: r'£S',
        );
  const Currency.TND()
      : this._(
          name: 'Tunisian Dinar',
          code: CurrencyCode.TND,
          number: 788,
          digits: 3,
          symbol: r'د.ت',
        );
  const Currency.VES()
      : this._(
          name: 'Bolívar Soberano',
          code: CurrencyCode.VES,
          number: 928,
          digits: 2,
          symbol: r'Bs.',
        );
  const Currency.MRU()
      : this._(
          name: 'Ouguiya',
          code: CurrencyCode.MRU,
          number: 929,
          digits: 2,
          symbol: r'UM',
        );
  const Currency.STN()
      : this._(
          name: 'Dobra',
          code: CurrencyCode.STN,
          number: 930,
          digits: 2,
          symbol: r'Db',
        );
  const Currency.CUC()
      : this._(
          name: 'Peso Convertible',
          code: CurrencyCode.CUC,
          number: 931,
          digits: 2,
          symbol: r'CUC$',
        );
  const Currency.ZWL()
      : this._(
          name: 'Zimbabwe Dollar',
          code: CurrencyCode.ZWL,
          number: 932,
          digits: 2,
          symbol: r'$',
        );
  const Currency.BYN()
      : this._(
          name: 'Belarusian Ruble',
          code: CurrencyCode.BYN,
          number: 933,
          digits: 2,
          symbol: r'Br',
        );
  const Currency.TMT()
      : this._(
          name: 'Turkmenistan New Manat',
          code: CurrencyCode.TMT,
          number: 934,
          digits: 2,
          symbol: r'm',
        );
  const Currency.GHS()
      : this._(
          name: 'Ghana Cedi',
          code: CurrencyCode.GHS,
          number: 936,
          digits: 2,
          symbol: r'GH₵',
        );
  const Currency.SDG()
      : this._(
          name: 'Sudanese Pound',
          code: CurrencyCode.SDG,
          number: 938,
          digits: 2,
          symbol: r'ج.س',
        );
}
