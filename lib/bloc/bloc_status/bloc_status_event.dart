abstract class BlocStatusEvent {}

class BlocStatusEventRequest extends BlocStatusEvent {
  final bool status;

  BlocStatusEventRequest({required this.status});
}
