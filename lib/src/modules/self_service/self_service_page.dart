import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/self_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';

class SelfServicePage extends StatefulWidget {
  const SelfServicePage({super.key});

  @override
  State<SelfServicePage> createState() => _SelfServicePageState();
}

class _SelfServicePageState extends State<SelfServicePage> with MessageViewMixin {
  final controller = Injector.get<SelfServiceController>();
  // _SelfServicePageState();

  @override
  void initState() {
    messageListener(controller);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.startProcess();

      effect(() {
        var baseRoute = '/self-service/';

        final step = controller.step;
        switch (step) {
          case EFormSteps.none:
            return;
          case EFormSteps.whoIAm:
            baseRoute += 'who-i-am';
          case EFormSteps.findPatient:
            baseRoute += 'find-patient';
          case EFormSteps.documents:
            baseRoute += 'documents';
          case EFormSteps.patient:
            baseRoute += 'patient';
          case EFormSteps.done:
            baseRoute += 'done';
          case EFormSteps.restart:
            Navigator.of(context).popUntil(ModalRoute.withName('/self-service'));
            controller.startProcess();
            return;
        }

        Navigator.of(context).pushNamed(baseRoute);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Atendimento')),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
