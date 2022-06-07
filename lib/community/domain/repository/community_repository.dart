abstract class CommunityRepository {
  const CommunityRepository();

  Future<void> get();
  Future<void> post();
  Future<void> put();
  Future<void> delete();
}
