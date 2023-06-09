import 'package:currency_exchange/core/base/base_use_case.dart';
import 'package:currency_exchange/core/error_handling/failure.dart';
import 'package:currency_exchange/domain/base_repo/index.dart';
import 'package:currency_exchange/domain/entity/currency_list/currency_list_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


/// Returns a list of all supported currencies
///
@LazySingleton()
class GetCurrencyListUseCase extends BaseUseCase<CurrencyListEntity, void> {
  final BaseCurrencyConvertorRepo _currencyRepository;

  GetCurrencyListUseCase(this._currencyRepository);

  @override
  Future<Either<Failure, CurrencyListEntity>> call(void params) async {
    final result = await _currencyRepository.getCurrencyList();
    return result;
  }

}
