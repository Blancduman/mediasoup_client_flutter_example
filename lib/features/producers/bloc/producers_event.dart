part of '../../../features/producers/bloc/producers_bloc.dart';

abstract class ProducersEvent extends Equatable {
  const ProducersEvent();
}

class ProducerAdd extends ProducersEvent {
  final Producer? producer;
  final DataProducer? dataProducer;

  const ProducerAdd({this.producer, this.dataProducer});

  @override
  List<Object?> get props => [producer, dataProducer];
}

class ProducerRemove extends ProducersEvent {
  final String source;

  const ProducerRemove({required  this.source});

  @override
  List<Object> get props => [source];
}

class ProducerPaused extends ProducersEvent {
  final String source;

  const ProducerPaused({required  this.source});

  @override
  List<Object> get props => [source];
}

class ProducerResumed extends ProducersEvent {
  final String source;

  const ProducerResumed({required this.source});

  @override
  List<Object> get props => [source];
}