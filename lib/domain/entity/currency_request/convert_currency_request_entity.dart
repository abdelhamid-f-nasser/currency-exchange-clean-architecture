import 'package:currency_exchange/domain/entity/currency_list/index.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ConvertCurrencyRequestEntity extends Equatable {
  final CurrencyEntity? from;
  final CurrencyEntity? to;
  final double? amount;

  const ConvertCurrencyRequestEntity({
    this.from,
    this.to,
    this.amount,
  }):
    assert((amount ?? 0) >= 0, 'amount must be greater than 0');

  @override
  List<Object?> get props => [
        from,
        to,
        amount,
      ];
}
