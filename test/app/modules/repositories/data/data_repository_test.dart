import 'package:flutter_test/flutter_test.dart';
import 'package:app_target/app/modules/repositories/data/data_repository.dart';

void main() {
  // ignore: unused_local_variable
  late DataRepository repository;

  setUpAll(() {
    repository = DataRepository();
  });
}
