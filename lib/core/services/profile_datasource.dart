import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hash_chat/models/user/user_model.dart';

 class ProfileDatasource {
   Future<UserModel?> fetchUserById(String userId) async {
     final doc = await FirebaseFirestore.instance.collection('users').doc(userId).get();
     if (doc.exists) {
       return UserModel.fromJson(doc.data()!);
     }
     return null;
   }
 }

