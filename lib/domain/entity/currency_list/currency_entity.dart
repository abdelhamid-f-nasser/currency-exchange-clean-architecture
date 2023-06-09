import 'package:currency_exchange/util/constants/index.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class CurrencyEntity extends Equatable {
  const CurrencyEntity({
    this.symbol,
    this.name,
    this.symbolNative,
    this.decimalDigits,
    this.rounding,
    this.code,
    this.namePlural,
  });

  final String? symbol;
  final String? name;
  final String? symbolNative;
  final int? decimalDigits;
  final int? rounding;
  final String? code;
  final String? namePlural;

  String get countryCode =>
      CurrencyCountryCodeMapper.getCountryCode(code ?? '');

  String get flagUrl => ApiConstants.flagBaseUrl(countryCode);

  @override
  List<Object?> get props => [
        symbol,
        name,
        symbolNative,
        decimalDigits,
        rounding,
        code,
        namePlural,
      ];
}
