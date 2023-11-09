import 'package:app_target/app/modules/repositories/login/login_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase(this._loginRepository);

  final ILoginRepository _loginRepository;

  @action
  Future<bool> authLocal(usuario, senha) async {
    var auth = await _loginRepository.authLocal(usuario: usuario, senha: senha);
    return auth;
  }

  @action
  Future<bool> authMockApi(usuario, senha) async {
    var auth = await _loginRepository.authUser(usuario: usuario, senha: senha);
    return auth;
  }
}
