abstract class ILoginRepository {
  Future<bool> authLocal({required String usuario, required String senha});
  Future<bool> authUser({required String usuario, required String senha});
}
