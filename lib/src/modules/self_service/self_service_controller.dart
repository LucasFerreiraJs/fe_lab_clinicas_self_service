import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/model/patient_model.dart';
import 'package:fe_lab_clinicas_self_service/src/model/self_service_model.dart';
import 'package:signals_flutter/signals_flutter.dart';

enum EFormSteps {
  none,
  whoIAm,
  findPatient,
  documents,
  patient,
  done,
  restart,
}

class SelfServiceController with MessageStateMixin {
  final _step = ValueSignal(EFormSteps.none);
  var _model = const SelfServiceModel();
  EFormSteps get step => _step();
  SelfServiceModel get model => _model;

  void startProcess() {
    _step.forceUpdate(EFormSteps.whoIAm);
  }

  void setWhoIAmDaraStepAndNext(String name, String lastName) {
    _model = _model.copyWith(name: () => name, lastName: () => lastName);
    _step.forceUpdate(EFormSteps.findPatient);
  }

  void clearForm() {
    _model = _model.clear();
  }

  void goToFormPatient(PatientModel? model) {
    _model = _model.copyWith(patient: () => model);
    _step.forceUpdate(EFormSteps.patient);
  }

  void restartProcess() {
    _step.forceUpdate(EFormSteps.restart);
    clearForm();
  }

  void updatePatientAndGoDocument(PatientModel? patient) {
    _model = _model.copyWith(patient: () => patient);
    _step.forceUpdate(EFormSteps.documents);
  }
}
