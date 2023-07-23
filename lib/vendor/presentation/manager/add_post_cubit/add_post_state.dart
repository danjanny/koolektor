import 'package:equatable/equatable.dart';

abstract class AddPostState extends Equatable {
  const AddPostState();

  @override
  List<Object?> get props => [];
}

class InitialAddPostState extends AddPostState {}

class LoadingAddPostState extends AddPostState {}

class ErrorAddPostState extends AddPostState {
  final String? responseCode;
  final String? responseMessage;

  const ErrorAddPostState(this.responseCode, this.responseMessage);
}

class OfflineAddPostState extends AddPostState {}

class TimeoutAddPostState extends AddPostState {}

class SuccessAddPostState extends AddPostState {
  final String? responseCode;
  final String? responseMessage;

  const SuccessAddPostState(this.responseCode, this.responseMessage);
}
