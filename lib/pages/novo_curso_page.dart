import 'package:flutter/material.dart';

class NovoCursoPage extends StatefulWidget {
  const NovoCursoPage({super.key});

  @override
  State<NovoCursoPage> createState() => _NovoCursoPageState();
}

class _NovoCursoPageState extends State<NovoCursoPage> {
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
            ],
          ),
        ),
      ),
    );
  }
}