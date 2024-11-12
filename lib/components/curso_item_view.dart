import 'package:escola/entidades/curso.dart';
import 'package:escola/vm/curso_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CursoItemView extends StatelessWidget {
  final Curso curso;

  const CursoItemView({
    super.key,
    required this.curso,
  });

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: PopupMenuButton<int>(
              onSelected: (value) {
                if (value == 0) {
                  final vm =
                      Provider.of<CursoViewModel>(context, listen: false);
                  vm.removerCurso(curso.id);
                }
              },
              itemBuilder: (context) {
                return <PopupMenuEntry<int>>[
                  const PopupMenuItem(
                    value: 0,
                    child: Text("Excluir"),
                  ),
                ];
              },
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  curso.nome,
                  style: tema.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: curso.periodo.background,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    curso.periodo.description,
                    style: tema.textTheme.bodySmall?.copyWith(
                      color: curso.periodo.text,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
