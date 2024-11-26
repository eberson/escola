import 'package:escola/api/backend.dart';
import 'package:escola/api/request/novo_curso.dart';
import 'package:escola/components/combo_periodo.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/material.dart';

class NovoCursoPage extends StatefulWidget {
  const NovoCursoPage({super.key});

  @override
  State<NovoCursoPage> createState() => _NovoCursoPageState();
}

class _NovoCursoPageState extends State<NovoCursoPage> {
  Periodo periodo = Periodo.manha;

  final nomeController = TextEditingController();

  final separador = const SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Curso"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "Nome",
                ),
              ),
              separador,
              ComboPeriodo(
                onPeriodoSelected: (value) => setState(() {
                  periodo = value;
                }),
              ),
              separador,
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () async => await criaNovoCurso(),
                  child: const Text("Salvar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> criaNovoCurso() async {
    await Backend.instance.cadastraNovoCurso(
      NovoCurso(
        nomeController.text,
        periodo,
      ),
    );

    final ctx = context;
    if (ctx.mounted) {
      Navigator.pop(ctx);
    }
  }
}
