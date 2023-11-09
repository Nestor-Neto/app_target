import 'package:app_target/app/modules/repositories/data/data_repository.dart';
import 'package:app_target/app/modules/repositories/login/login_repository.dart';
import 'package:app_target/app/modules/home/home_module.dart';
import 'package:app_target/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DataRepository()),
    Bind.lazySingleton((i) => LoginRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/', module: LoginModule()),
  ];
}
