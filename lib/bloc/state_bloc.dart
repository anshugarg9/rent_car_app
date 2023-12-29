import 'state_provider.dart';
import 'dart:async';

class StateBloc {
  StreamController<Object> animationController = StreamController();
  final StateProvider provider = StateProvider();

  Stream<Object> get animationStatus => animationController.stream;

  void toggleAnimation() {
    provider.toggleAnimationValue();
    animationController.sink.add(provider.isAnimating);
  }

  void dispose() {
    animationController.close();
  }
}

final stateBloc = StateBloc();