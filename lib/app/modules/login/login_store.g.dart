// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  late final _$authLocalAsyncAction =
      AsyncAction('_LoginStoreBase.authLocal', context: context);

  @override
  Future<bool> authLocal(dynamic usuario, dynamic senha) {
    return _$authLocalAsyncAction.run(() => super.authLocal(usuario, senha));
  }

  late final _$authMockApiAsyncAction =
      AsyncAction('_LoginStoreBase.authMockApi', context: context);

  @override
  Future<bool> authMockApi(dynamic usuario, dynamic senha) {
    return _$authMockApiAsyncAction
        .run(() => super.authMockApi(usuario, senha));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
