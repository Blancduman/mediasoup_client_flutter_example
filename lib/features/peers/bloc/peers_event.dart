part of 'peers_bloc.dart';

abstract class PeersEvent extends Equatable {
  const PeersEvent();
}

class PeerAdd extends PeersEvent {
  final Map<String, dynamic> newPeer;

  const PeerAdd({required this.newPeer});

  @override
  List<Object> get props => [newPeer];
}

class PeerAddConsumer extends PeersEvent {
  final Consumer? consumer;
  final String? peerId;
  final DataConsumer? dataConsumer;

  const PeerAddConsumer({this.consumer, this.peerId, this.dataConsumer});

  @override
  List<Object?> get props => [consumer, peerId, dataConsumer];
}

class PeerRemoveConsumer extends PeersEvent {
  final String consumerId;

  const PeerRemoveConsumer({required this.consumerId});

  @override
  List<Object> get props => [consumerId];
}

class PeerRemove extends PeersEvent {
  final String peerId;

  const PeerRemove({required this.peerId});

  @override
  List<Object> get props => [peerId];
}

class PeerPausedConsumer extends PeersEvent {
  final String consumerId;

  const PeerPausedConsumer({required this.consumerId});

  @override
  List<Object> get props => [consumerId];
}

class PeerResumedConsumer extends PeersEvent {
  final String consumerId;

  const PeerResumedConsumer({required this.consumerId});

  @override
  List<Object> get props => [consumerId];
}