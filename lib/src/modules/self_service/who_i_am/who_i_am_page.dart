import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class WhoIAmPage extends StatelessWidget {
  const WhoIAmPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: LabClinicasAppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(value: 1, child: Text('Finalizar Tarefa')),
              ];
            },
            child: IconPopupMenuWidget(),
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
                child: Column(
                  children: [
                    Image.asset('assets/images/logo_vertical.png'),
                    const SizedBox(height: 48),
                    const Text('Bem-vindo!', style: LabClinicasTheme.titleStyle),
                    const SizedBox(height: 48),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Digite seu nome'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Digite seu sobrenome'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 48,
                      width: sizeOf.width * .8,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Continuar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
