import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:signals_flutter/signals_flutter.dart';

enum EFormSteps {
  none,
  whoIAm,
  findPatient,
  documents,
  done,
  restart,
}

class SelfServiceController with MessageStateMixin {
  final _step = ValueSignal(EFormSteps.none);

  EFormSteps get step => _step();

  void startProcess() {
    _step.forceUpdate(EFormSteps.whoIAm);
  }
}
