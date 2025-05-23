

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../models/user/user_model.dart';
import '../../services/auth_datasource.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Stream<User?> getCurrentUser() {
    return datasource.userChanges;
  }

  @override
  Future<Either<String, UserModel>> signInWithGoogle() {
    return datasource.signInWithGoogle();
  }

  @override
  Future<void> signOut() => datasource.signOut();
}