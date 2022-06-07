abstract class MainRepository {
  const MainRepository();

  Future<void> get();
  Future<void> post();
  Future<void> put();
  Future<void> delete();
}
