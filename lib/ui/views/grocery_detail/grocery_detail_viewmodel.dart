import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class GroceryDetailViewModel extends BaseViewModel {
  final _logger = Logger();

  final String id;

  GroceryDetailViewModel({required this.id});

  void initialize() {
    _logger.i(id);
  }
}
