// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePicture: json['profilePicture'] as String,
      lastMessage: json['lastMessage'] as String? ?? '',
      lastSeen: const TimestampConverter().fromJson(json['lastSeen']),
      unreadCount: (json['unreadCount'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      isOnline: json['isOnline'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'lastMessage': instance.lastMessage,
      'lastSeen': const TimestampConverter().toJson(instance.lastSeen),
      'unreadCount': instance.unreadCount,
      'isOnline': instance.isOnline,
    };
