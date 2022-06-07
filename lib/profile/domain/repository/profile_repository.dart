abstract class ProfileRepository {
  const ProfileRepository();

  Future<void> get();
  Future<void> post();
  Future<void> put();
  Future<void> delete();
}
