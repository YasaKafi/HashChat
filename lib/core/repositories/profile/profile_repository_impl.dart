import 'package:hash_chat/core/repositories/profile/profile_repository.dart';
import 'package:hash_chat/core/services/profile_datasource.dart';
import 'package:hash_chat/models/user/user_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDatasource datasource;

  ProfileRepositoryImpl(this.datasource);

  @override
  Future<UserModel> fetchUserbyId(String userId) async {
    final user = await datasource.fetchUserById(userId);
    if (user != null) {
      return user;
    } else {
      throw Exception('User not found');
    }
  }


}