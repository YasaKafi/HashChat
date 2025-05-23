import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/timestamp_converter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required String profilePicture,
    @Default('') String lastMessage,
    @TimestampConverter() DateTime? lastSeen,
    @Default({}) Map<String, int> unreadCount,
    @Default(false) bool isOnline,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
