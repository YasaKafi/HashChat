import 'package:hash_chat/core/repositories/home/home_repository.dart';
import 'package:hash_chat/core/services/home_datasource.dart';

import '../../../models/user/user_model.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource datasource;

  HomeRepositoryImpl(this.datasource);

  @override
  Stream<List<UserModel>> fetchUsers() {
    return datasource.fetchUsers();
  }
}
