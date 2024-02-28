import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/self_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LabClinicasSelfServiceAppBar extends LabClinicasAppBar {
  LabClinicasSelfServiceAppBar({super.key})
      : super(
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(value: 1, child: Text('Reiniciar processo')),
                ];
              },
              child: const IconPopupMenuWidget(),
              onSelected: (value) async {
                if (value == 1) {
                  Injector.get<SelfServiceController>().restartProcess();
                }
              },
            ),
          ],
        );
}
