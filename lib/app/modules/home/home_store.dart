import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:app_target/app/modules/repositories/data/data_repository_interface.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  HomeStoreBase(this._dataRepository);

  final IDataRepository _dataRepository;

  @observable
  int index = -1;

  @observable
  List<String> listDto = [];

  @action
  Future<void> getAll() async {
    var list = await _dataRepository.getAllItens();
    listDto = list;
  }

  @action
  Future<void> loadComments() async {
    var listcomments = await _dataRepository.loadComments();
    listDto = listcomments!;
  }

  Future<void> delete({required int nr}) async {
    await _dataRepository.delete(nrIndex: nr);
    await getAll();
  }

  Future<void> insert({required String item}) async {
    await _dataRepository.insertDescriptionItem(item: item);
    await getAll();
  }

  @action
  Future<void> editStatus({required int nr}) async {
    this.index = nr;
  }

  @action
  void unEditStatus() {
    index = -1;
  }

  void inputClean({required TextEditingController descritionEditing}) {
    descritionEditing.text = "";
  }

  @action
  Future<void> editItem({required int nr, required String item}) async {
    await _dataRepository.editDescription(item: item, nrIndex: index);
    await getAll();
  }
}
