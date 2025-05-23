// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) messagesReceived,
    required TResult Function(String message) messagesError,
    required TResult Function(
            String chatId, String currentUserId, String senderId)
        loadMessages,
    required TResult Function(String chatId, MessageModel message,
            String senderId, String receiverId)
        sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? messagesReceived,
    TResult? Function(String message)? messagesError,
    TResult? Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult? Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? messagesReceived,
    TResult Function(String message)? messagesError,
    TResult Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessagesReceived value) messagesReceived,
    required TResult Function(_MessagesError value) messagesError,
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessagesReceived value)? messagesReceived,
    TResult? Function(_MessagesError value)? messagesError,
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessagesReceived value)? messagesReceived,
    TResult Function(_MessagesError value)? messagesError,
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MessagesReceivedImplCopyWith<$Res> {
  factory _$$MessagesReceivedImplCopyWith(_$MessagesReceivedImpl value,
          $Res Function(_$MessagesReceivedImpl) then) =
      __$$MessagesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$MessagesReceivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessagesReceivedImpl>
    implements _$$MessagesReceivedImplCopyWith<$Res> {
  __$$MessagesReceivedImplCopyWithImpl(_$MessagesReceivedImpl _value,
      $Res Function(_$MessagesReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesReceivedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$MessagesReceivedImpl implements _MessagesReceived {
  const _$MessagesReceivedImpl(final List<MessageModel> messages)
      : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.messagesReceived(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesReceivedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesReceivedImplCopyWith<_$MessagesReceivedImpl> get copyWith =>
      __$$MessagesReceivedImplCopyWithImpl<_$MessagesReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) messagesReceived,
    required TResult Function(String message) messagesError,
    required TResult Function(
            String chatId, String currentUserId, String senderId)
        loadMessages,
    required TResult Function(String chatId, MessageModel message,
            String senderId, String receiverId)
        sendMessage,
  }) {
    return messagesReceived(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? messagesReceived,
    TResult? Function(String message)? messagesError,
    TResult? Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult? Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
  }) {
    return messagesReceived?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? messagesReceived,
    TResult Function(String message)? messagesError,
    TResult Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessagesReceived value) messagesReceived,
    required TResult Function(_MessagesError value) messagesError,
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return messagesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessagesReceived value)? messagesReceived,
    TResult? Function(_MessagesError value)? messagesError,
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return messagesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessagesReceived value)? messagesReceived,
    TResult Function(_MessagesError value)? messagesError,
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (messagesReceived != null) {
      return messagesReceived(this);
    }
    return orElse();
  }
}

abstract class _MessagesReceived implements ChatEvent {
  const factory _MessagesReceived(final List<MessageModel> messages) =
      _$MessagesReceivedImpl;

  List<MessageModel> get messages;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesReceivedImplCopyWith<_$MessagesReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesErrorImplCopyWith<$Res> {
  factory _$$MessagesErrorImplCopyWith(
          _$MessagesErrorImpl value, $Res Function(_$MessagesErrorImpl) then) =
      __$$MessagesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessagesErrorImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessagesErrorImpl>
    implements _$$MessagesErrorImplCopyWith<$Res> {
  __$$MessagesErrorImplCopyWithImpl(
      _$MessagesErrorImpl _value, $Res Function(_$MessagesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessagesErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessagesErrorImpl implements _MessagesError {
  const _$MessagesErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.messagesError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesErrorImplCopyWith<_$MessagesErrorImpl> get copyWith =>
      __$$MessagesErrorImplCopyWithImpl<_$MessagesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) messagesReceived,
    required TResult Function(String message) messagesError,
    required TResult Function(
            String chatId, String currentUserId, String senderId)
        loadMessages,
    required TResult Function(String chatId, MessageModel message,
            String senderId, String receiverId)
        sendMessage,
  }) {
    return messagesError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? messagesReceived,
    TResult? Function(String message)? messagesError,
    TResult? Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult? Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
  }) {
    return messagesError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? messagesReceived,
    TResult Function(String message)? messagesError,
    TResult Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
    required TResult orElse(),
  }) {
    if (messagesError != null) {
      return messagesError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessagesReceived value) messagesReceived,
    required TResult Function(_MessagesError value) messagesError,
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return messagesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessagesReceived value)? messagesReceived,
    TResult? Function(_MessagesError value)? messagesError,
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return messagesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessagesReceived value)? messagesReceived,
    TResult Function(_MessagesError value)? messagesError,
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (messagesError != null) {
      return messagesError(this);
    }
    return orElse();
  }
}

abstract class _MessagesError implements ChatEvent {
  const factory _MessagesError(final String message) = _$MessagesErrorImpl;

  String get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesErrorImplCopyWith<_$MessagesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMessagesImplCopyWith<$Res> {
  factory _$$LoadMessagesImplCopyWith(
          _$LoadMessagesImpl value, $Res Function(_$LoadMessagesImpl) then) =
      __$$LoadMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, String currentUserId, String senderId});
}

/// @nodoc
class __$$LoadMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadMessagesImpl>
    implements _$$LoadMessagesImplCopyWith<$Res> {
  __$$LoadMessagesImplCopyWithImpl(
      _$LoadMessagesImpl _value, $Res Function(_$LoadMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? currentUserId = null,
    Object? senderId = null,
  }) {
    return _then(_$LoadMessagesImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessagesImpl implements _LoadMessages {
  const _$LoadMessagesImpl(this.chatId, this.currentUserId, this.senderId);

  @override
  final String chatId;
  @override
  final String currentUserId;
  @override
  final String senderId;

  @override
  String toString() {
    return 'ChatEvent.loadMessages(chatId: $chatId, currentUserId: $currentUserId, senderId: $senderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessagesImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, currentUserId, senderId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      __$$LoadMessagesImplCopyWithImpl<_$LoadMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) messagesReceived,
    required TResult Function(String message) messagesError,
    required TResult Function(
            String chatId, String currentUserId, String senderId)
        loadMessages,
    required TResult Function(String chatId, MessageModel message,
            String senderId, String receiverId)
        sendMessage,
  }) {
    return loadMessages(chatId, currentUserId, senderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? messagesReceived,
    TResult? Function(String message)? messagesError,
    TResult? Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult? Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
  }) {
    return loadMessages?.call(chatId, currentUserId, senderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? messagesReceived,
    TResult Function(String message)? messagesError,
    TResult Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(chatId, currentUserId, senderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessagesReceived value) messagesReceived,
    required TResult Function(_MessagesError value) messagesError,
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return loadMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessagesReceived value)? messagesReceived,
    TResult? Function(_MessagesError value)? messagesError,
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return loadMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessagesReceived value)? messagesReceived,
    TResult Function(_MessagesError value)? messagesError,
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (loadMessages != null) {
      return loadMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMessages implements ChatEvent {
  const factory _LoadMessages(final String chatId, final String currentUserId,
      final String senderId) = _$LoadMessagesImpl;

  String get chatId;
  String get currentUserId;
  String get senderId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessagesImplCopyWith<_$LoadMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String chatId,
      MessageModel message,
      String senderId,
      String receiverId});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? message = null,
    Object? senderId = null,
    Object? receiverId = null,
  }) {
    return _then(_$SendMessageImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(
      {required this.chatId,
      required this.message,
      required this.senderId,
      required this.receiverId});

  @override
  final String chatId;
  @override
  final MessageModel message;
  @override
  final String senderId;
  @override
  final String receiverId;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(chatId: $chatId, message: $message, senderId: $senderId, receiverId: $receiverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatId, message, senderId, receiverId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MessageModel> messages) messagesReceived,
    required TResult Function(String message) messagesError,
    required TResult Function(
            String chatId, String currentUserId, String senderId)
        loadMessages,
    required TResult Function(String chatId, MessageModel message,
            String senderId, String receiverId)
        sendMessage,
  }) {
    return sendMessage(chatId, message, senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MessageModel> messages)? messagesReceived,
    TResult? Function(String message)? messagesError,
    TResult? Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult? Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
  }) {
    return sendMessage?.call(chatId, message, senderId, receiverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MessageModel> messages)? messagesReceived,
    TResult Function(String message)? messagesError,
    TResult Function(String chatId, String currentUserId, String senderId)?
        loadMessages,
    TResult Function(String chatId, MessageModel message, String senderId,
            String receiverId)?
        sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chatId, message, senderId, receiverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MessagesReceived value) messagesReceived,
    required TResult Function(_MessagesError value) messagesError,
    required TResult Function(_LoadMessages value) loadMessages,
    required TResult Function(_SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MessagesReceived value)? messagesReceived,
    TResult? Function(_MessagesError value)? messagesError,
    TResult? Function(_LoadMessages value)? loadMessages,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MessagesReceived value)? messagesReceived,
    TResult Function(_MessagesError value)? messagesError,
    TResult Function(_LoadMessages value)? loadMessages,
    TResult Function(_SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {required final String chatId,
      required final MessageModel message,
      required final String senderId,
      required final String receiverId}) = _$SendMessageImpl;

  String get chatId;
  MessageModel get message;
  String get senderId;
  String get receiverId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messages});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$SuccessImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<MessageModel> messages) : _messages = messages;

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.success(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String message) error,
  }) {
    return success(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChatState {
  const factory _Success(final List<MessageModel> messages) = _$SuccessImpl;

  List<MessageModel> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageModel> messages) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageModel> messages)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageModel> messages)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
