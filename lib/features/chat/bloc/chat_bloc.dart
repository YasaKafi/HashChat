import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/repositories/chat/chat_repository.dart';
import '../../../models/message/message_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _repository;
  StreamSubscription<List<MessageModel>>? _subscription;

  ChatBloc({required ChatRepository chatrepository})
      : _repository = chatrepository,
        super(const ChatState.initial()) {
    on<_LoadMessages>(_onLoadMessages);
    on<_MessagesReceived>(_onMessagesReceived);
    on<_MessagesError>(_onMessagesError);
    on<_SendMessage>(_onSendMessage);
  }

  Future<void> _onLoadMessages(_LoadMessages event, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());

    await _subscription?.cancel();

    _subscription = _repository.getMessages(event.chatId,  event.currentUserId, event.senderId,).listen(
          (messages) => add(ChatEvent.messagesReceived(messages)),
      onError: (e) => add(ChatEvent.messagesError(e.toString())),
    );
  }

  void _onMessagesReceived(_MessagesReceived event, Emitter<ChatState> emit) {
    emit(ChatState.success(event.messages));
  }

  void _onMessagesError(_MessagesError event, Emitter<ChatState> emit) {
    emit(ChatState.error(event.message));
  }


  Future<void> _onSendMessage(_SendMessage event, Emitter<ChatState> emit) async {
    final result = await _repository.sendMessage(event.chatId, event.message, event.senderId, event.receiverId);
    result.fold(
          (l) => emit(ChatState.error(l)),
          (r) => null,
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
