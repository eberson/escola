import 'package:escola/entidades/curso.dart';
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
    SchedulerBinding.instance.addPersistentFrameCallback((_) {
      final vm = Provider.of<CursoViewModel>(
        context,
        listen: false,
      );

      vm.listTodosCursos();
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
      body: body(cursos),
    );
  }

  Widget emptyBody() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Estamos tentando carregar os cursos"),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Recarregar"),
            ),
          ],
        ),
      );

  Widget body(List<Curso> cursos) {
    return ListView.builder(
      itemCount: cursos.length,
      itemBuilder: (context, index) => Text(cursos[index].nome),
    );
  }
}
