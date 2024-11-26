import 'package:escola/api/backend.dart';
import 'package:escola/components/curso_item_view.dart';
import 'package:escola/entidades/curso.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Curso>> futureCurso;

  @override
  void initState() {
    futureCurso = Backend.instance.listarCursos();

    super.initState();
  }

  void recarregaCursos() {
    setState(() {
      futureCurso = Backend.instance.listarCursos();
    });
  }

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cursos"),
        backgroundColor: tema.colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              "/novo-curso",
            ),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder<List<Curso>>(
        future: futureCurso,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return onError(context, snapshot.error);
          }

          if (snapshot.hasData) {
            return onShow(context, snapshot.data!);
          }

          return onLoading();
        },
      ),
    );
  }

  Widget onLoading() => const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 10,
            ),
            Text("Aguarde enquanto carregamos os cursos..."),
          ],
        ),
      );

  Widget onError(BuildContext context, Object? error) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ocorreu um erro: $error"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Recarregar"),
            ),
          ],
        ),
      ),
    );
  }

  Widget onShow(BuildContext context, List<Curso> cursos) {
    return RefreshIndicator(
      onRefresh: () {
        recarregaCursos();
        return Future.value();
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: cursos.length,
        itemBuilder: (context, index) => CursoItemView(
          curso: cursos[index],
          onDelete: (value) async {
            await Backend.instance.deletarCurso(value);

            setState(() {
              futureCurso = Backend.instance.listarCursos();
            });
          },
        ),
      ),
    );
  }
}
