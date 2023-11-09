// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$indexAtom = Atom(name: 'HomeStoreBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$listDtoAtom =
      Atom(name: 'HomeStoreBase.listDto', context: context);

  @override
  List<String> get listDto {
    _$listDtoAtom.reportRead();
    return super.listDto;
  }

  @override
  set listDto(List<String> value) {
    _$listDtoAtom.reportWrite(value, super.listDto, () {
      super.listDto = value;
    });
  }

  late final _$getAllAsyncAction =
      AsyncAction('HomeStoreBase.getAll', context: context);

  @override
  Future<void> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  late final _$loadCommentsAsyncAction =
      AsyncAction('HomeStoreBase.loadComments', context: context);

  @override
  Future<void> loadComments() {
    return _$loadCommentsAsyncAction.run(() => super.loadComments());
  }

  late final _$editStatusAsyncAction =
      AsyncAction('HomeStoreBase.editStatus', context: context);

  @override
  Future<void> editStatus({required int nr}) {
    return _$editStatusAsyncAction.run(() => super.editStatus(nr: nr));
  }

  late final _$editItemAsyncAction =
      AsyncAction('HomeStoreBase.editItem', context: context);

  @override
  Future<void> editItem({required int nr, required String item}) {
    return _$editItemAsyncAction.run(() => super.editItem(nr: nr, item: item));
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  void unEditStatus() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.unEditStatus');
    try {
      return super.unEditStatus();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index},
listDto: ${listDto}
    ''';
  }
}
