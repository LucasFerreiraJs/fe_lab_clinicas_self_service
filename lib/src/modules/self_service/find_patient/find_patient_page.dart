import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class FindPatientPage extends StatefulWidget {
  const FindPatientPage({super.key});

  @override
  State<FindPatientPage> createState() => _FindPatientPageState();
}

class _FindPatientPageState extends State<FindPatientPage> {
  final formKey = GlobalKey<FormState>();
  final documentEC = TextEditingController();

  @override
  void dispose() {
    documentEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: LabClinicasAppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(value: 1, child: Text('Reiniciar processo')),
              ];
            },
            child: const IconPopupMenuWidget(),
            onSelected: (value) async {
              if (value == 1) {}
            },
          ),
        ],
      ),
      body: LayoutBuilder(builder: (_, constrains) {
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_login.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(40),
                width: sizeOf.width * .8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Image.asset('assets/images/logo_vertical.png'),
                      const SizedBox(height: 48),
                      TextFormField(
                        controller: documentEC,
                        validator: Validatorless.required('CPF obrigatório'),
                        decoration: const InputDecoration(
                          label: Text('Digite o CPF do paciente'),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(children: [
                        const Text(
                          'Não sabe CPF do paciente',
                          style: TextStyle(
                            fontSize: 14,
                            color: LabClinicasTheme.blueColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Clique aqui',
                            style: TextStyle(
                              fontSize: 14,
                              color: LabClinicasTheme.orangeColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 48,
                        width: sizeOf.width * .8,
                        child: ElevatedButton(
                          onPressed: () {
                            final valid = formKey.currentState?.validate() ?? false;
                            if (valid) {}
                          },
                          child: const Text('Continuar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
