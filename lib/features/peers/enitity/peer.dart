import 'package:example/features/peers/enitity/peer_device.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:mediasoup_client_flutter/mediasoup_client_flutter.dart';

class Peer {
  final Consumer? audio;
  final Consumer? video;
  final DataConsumer? dataConsumer;
  final PeerDevice device;
  final String displayName;
  final String id;
  final RTCVideoRenderer? renderer;

  const Peer({
    this.audio,
    this.video,
    this.dataConsumer,
    this.renderer,
    required this.device,
    required this.displayName,
    required this.id,
  });

  Peer.fromMap(Map data)
      : id = data['id'],
        displayName = data['displayName'],
        device = PeerDevice.fromMap(data['device']),
        audio = null,
        video = null,
        dataConsumer = null,
        renderer = null;

  List<String> get consumers => [
    if (audio != null)
      audio!.id,
    if (video != null)
      video!.id
  ];

  Peer copyWith({
    Consumer? audio,
    Consumer? video,
    DataConsumer? dataConsumer,
    RTCVideoRenderer? renderer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: audio ?? this.audio,
      video: video ?? this.video,
      dataConsumer: dataConsumer ?? this.dataConsumer,
      renderer: renderer ?? this.renderer,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }

  Peer removeAudio({
    Consumer? video,
    DataConsumer? dataConsumer,
    RTCVideoRenderer? renderer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: null,
      video: video ?? this.video,
      dataConsumer: dataConsumer ?? this.dataConsumer,
      renderer: renderer ?? this.renderer,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }

  Peer removeVideo({
    Consumer? audio,
    DataConsumer? dataConsumer,
    RTCVideoRenderer? renderer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: audio ?? this.audio,
      video: null,
      dataConsumer: dataConsumer ?? this.dataConsumer,
      renderer: renderer ?? this.renderer,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }

  Peer removeAudioAndRenderer({
    Consumer? video,
    DataConsumer? dataConsumer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: null,
      video: video ?? this.video,
      dataConsumer: dataConsumer ?? this.dataConsumer,
      renderer: null,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }

  Peer removeVideoAndRenderer({
    Consumer? audio,
    DataConsumer? dataConsumer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: audio ?? this.audio,
      video: null,
      dataConsumer: dataConsumer ?? this.dataConsumer,
      renderer: null,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }

  Peer removeDataConsumer({
    Consumer? audio,
    Consumer? video,
    RTCVideoRenderer? renderer,
    PeerDevice? device,
    String? displayName,
    String? id,
  }) {
    return Peer(
      audio: audio ?? this.audio,
      video: video ?? this.video,
      dataConsumer: null,
      renderer: renderer ?? this.renderer,
      displayName: displayName ?? this.displayName,
      device: device ?? this.device,
      id: id ?? this.id,
    );
  }
}
