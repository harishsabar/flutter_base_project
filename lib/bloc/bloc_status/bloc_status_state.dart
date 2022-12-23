abstract class BlocStatusState {}

class BlocStatusStateInitial extends BlocStatusState {}

class BlocStatusStateLoading extends BlocStatusState {}

class BlocStatusStateLoaded extends BlocStatusState {
  final bool status;

  BlocStatusStateLoaded({required this.status});
}

class BlocStatusStateError extends BlocStatusState {
  final String message;

  BlocStatusStateError({required this.message});
}