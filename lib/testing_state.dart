part of 'testing_bloc.dart';

@immutable
abstract class TestingState {}

class TestingInitial extends TestingState {}

class LoadedDataState extends TestingState {
  final dynamic data;

  LoadedDataState(this.data);
}

class ErrorDataState extends TestingState {
  final String error;

  ErrorDataState(this.error);
}
