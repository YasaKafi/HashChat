

import '../../../models/user/user_model.dart';

abstract class ProfileRepository {
  Future<UserModel> fetchUserbyId(String userId);
}