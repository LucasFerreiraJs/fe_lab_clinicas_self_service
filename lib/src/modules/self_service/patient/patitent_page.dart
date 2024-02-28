import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/widget/lab_clinicas_self_service_app_bar.dart';
import 'package:flutter/material.dart';

class PatientPage extends StatelessWidget {
  const PatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: LabClinicasSelfServiceAppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            width: sizeOf.width * .85,
            margin: const EdgeInsets.only(top: 18),
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: LabClinicasTheme.orangeColor),
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset('assets/images/check_icon.png'),
                      const SizedBox(height: 24),
                      const Text('Cadastro encontrado', style: LabClinicasTheme.titleSmallStyle),
                      const SizedBox(height: 32),
                      const Text(
                        'Confirma os dados do seu cadastro',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: LabClinicasTheme.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      TextFormField(decoration: const InputDecoration(label: Text('Nome paciente'))),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('Email'))),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('Telefone contato'))),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('Digite seu CPF'))),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('CEP'))),
                      const SizedBox(height: 16),
                      Row(children: [
                        Flexible(
                          flex: 3,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Endereço'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          flex: 1,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Número'),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(height: 16),
                      Row(children: [
                        Flexible(
                          flex: 1,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Complemento'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          flex: 1,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Estado'),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(height: 16),
                      Row(children: [
                        Flexible(
                          flex: 1,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Cidade'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          flex: 1,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Bairro'),
                            ),
                          ),
                        ),
                      ]),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('Responsável'))),
                      const SizedBox(height: 16),
                      TextFormField(decoration: const InputDecoration(label: Text('Responsável Identificação'))),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text('Editar'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 17),
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Continar'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
