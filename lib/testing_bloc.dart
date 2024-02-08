import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_experimen/network/base_dio.dart';
import 'package:meta/meta.dart';

part 'testing_event.dart';
part 'testing_state.dart';

class TestingBloc extends Bloc<TestingEvent, TestingState> with BaseDio {
  TestingBloc() : super(TestingInitial()) {
    on<FetchDataEvent>((event, emit) {
      _mapFetchDataToState(emit);
    });
  }

  @override
  Stream<TestingState> mapEventToState(TestingEvent event,) async* {
    // You can implement additional event handling logic here if needed
  }

  void _mapFetchDataToState(Emitter<TestingState> emit) async {
    try {
      final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      emit(LoadedDataState(response.data));
    } catch (e) {
      emit(ErrorDataState(e.toString()));
    }
  }
}
