import 'package:bloc_experimen/testing_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TestingBloc(),
        child: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Network Request with dio and Bloc'),
      ),
      body: Center(
        child: BlocBuilder<TestingBloc, TestingState>(
          builder: (context, state) {
            if (state is TestingInitial) {
              return Text('Press the button to fetch data.');
            } else if (state is LoadedDataState) {
              return Text('Data: ${state.data}');
            } else if (state is ErrorDataState) {
              return Text('Error: ${state.error}');
            } else {
              return Text('Unknown State');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // dataBloc.add(FetchDataEvent());
          context.read<TestingBloc>().add(FetchDataEvent());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
