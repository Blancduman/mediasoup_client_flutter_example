part of 'producers_bloc.dart';

class ProducersState extends Equatable {
  final Producer? mic;
  final Producer? webcam;
  final Producer? screen;
  final DataProducer? chatDataProducer;
  final DataProducer? botDataProducer;

  const ProducersState({
    this.mic,
    this.webcam,
    this.screen,
    this.chatDataProducer,
    this.botDataProducer,
  });

  static ProducersState copy(ProducersState old, {
    Producer? mic,
    Producer? webcam,
    Producer? screen,
    DataProducer? chatDataProducer,
    DataProducer? botDataProducer,
  }) {
    return ProducersState(
      mic: mic ?? old.mic,
      webcam: webcam ?? old.webcam,
      screen: screen ?? old.screen,
      chatDataProducer: chatDataProducer ?? old.chatDataProducer,
      botDataProducer: botDataProducer ?? old.botDataProducer,
    );
  }

  static ProducersState removeMic(ProducersState old) {
    return ProducersState(
      mic: null,
      webcam: old.webcam,
      screen: old.screen,
      chatDataProducer: old.chatDataProducer,
      botDataProducer: old.botDataProducer,
    );
  }

  static ProducersState removeWebcam(ProducersState old) {
    return ProducersState(
      mic: old.mic,
      webcam: null,
      screen: old.screen,
      chatDataProducer: old.chatDataProducer,
      botDataProducer: old.botDataProducer,
    );
  }

  static ProducersState removeScreen(ProducersState old) {
    return ProducersState(
      mic: old.mic,
      webcam: old.webcam,
      screen: null,
      chatDataProducer: old.chatDataProducer,
      botDataProducer: old.botDataProducer,
    );
  }

  static ProducersState removeChatDataProducer(ProducersState old) {
    return ProducersState(
      mic: old.mic,
      webcam: old.webcam,
      screen: old.screen,
      chatDataProducer: null,
      botDataProducer: old.botDataProducer,
    );
  }

  static ProducersState removeBotDataProducer(ProducersState old) {
    return ProducersState(
      mic: old.mic,
      webcam: old.webcam,
      screen: old.screen,
      chatDataProducer: old.chatDataProducer,
      botDataProducer: null,
    );
  }
  @override
  List<Object?> get props => [mic, webcam, screen, chatDataProducer, botDataProducer];
}
