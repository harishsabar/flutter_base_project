import 'package:base_project/bloc/bloc_status/bloc_status_event.dart';
import 'package:base_project/bloc/bloc_status/bloc_status_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocStatusBloc extends Bloc<BlocStatusEvent, BlocStatusState> {
  // final ApiRepositories apiRepositories;
  // BlocStatusBloc({}) : super(BlocStatusStateInitial()) {
  BlocStatusBloc() : super(BlocStatusStateInitial()) {
    on<BlocStatusEventRequest>((event, emit) async {
      emit(BlocStatusStateLoading());

      try {
        // final Model{} model = await repository.request{}(...,...);
        emit(BlocStatusStateLoaded(status: event.status));
      } catch (e) {
        emit(BlocStatusStateError(message: e.toString()));
      }
    });
  }
}
