import 'package:rive/rive.dart';

class RiveModel {
  final String riveSrc, riveArtboard, riveStateMachineName;
  late SMIBool? riveStatus;

  RiveModel({
    required this.riveSrc,
    required this.riveArtboard,
    required this.riveStateMachineName,
    this.riveStatus,
  });

  set setRiveStatus(SMIBool riveState) {
    riveStatus = riveState;
  }

}
