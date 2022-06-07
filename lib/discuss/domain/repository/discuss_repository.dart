abstract class DiscussRepository {
  const DiscussRepository();

  Future<void> get();
  Future<void> post();
  Future<void> put();
  Future<void> delete();
}
