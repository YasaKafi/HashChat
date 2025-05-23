import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../models/user/user_model.dart';

abstract class AuthRepository {
  Stream<User?> getCurrentUser();
  Future<Either<String, UserModel>> signInWithGoogle();
  Future<void> signOut();
}
