import 'package:flutter_test/flutter_test.dart';
import 'package:app_target/app/modules/repositories/login/login_repository.dart';

void main() {
  // ignore: unused_local_variable
  late LoginRepository repository;

  setUpAll(() {
    repository = LoginRepository();
  });
}
