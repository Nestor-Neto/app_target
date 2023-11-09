abstract class IDataRepository {
  Future<List<String>> getAllItens();
  Future<void> insertDescriptionItem({required String item});
  Future<void> editDescription({required String item, required int nrIndex});
  Future<void> delete({required int nrIndex});
  Future<List<String>?> loadComments();
}
