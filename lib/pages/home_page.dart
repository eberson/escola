import 'package:escola/components/curso_item_view.dart';
import 'package:escola/vm/curso_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final vm = Provider.of<CursoViewModel>(context, listen: false);
      vm.listaTodos();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    final vm = Provider.of<CursoViewModel>(context);
    final cursos = vm.cursos;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cursos"),
        backgroundColor: tema.colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/novo-curso"),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: cursos.length,
        itemBuilder: (context, index) => CursoItemView(curso: cursos[index]),
      ),
    );
  }
}
