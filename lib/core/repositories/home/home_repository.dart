
import '../../../models/user/user_model.dart';

abstract class HomeRepository {
  Stream<List<UserModel>> fetchUsers();
}