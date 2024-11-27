import 'package:escola/entidades/curso.dart';
import 'package:escola/vm/curso_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CursoItemView extends StatelessWidget {
  final Curso curso;
  final VoidCallback onDeleted;

  const CursoItemView({
    super.key,
    required this.curso,
    required this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                curso.nome,
                style: tema.textTheme.titleMedium,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: curso.periodo.corFundo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  curso.periodo.description,
                  style: tema.textTheme.bodySmall?.copyWith(
                    color: curso.periodo.corFonte,
                  ),
                ),
              ),
            ],
          ),
          PopupMenuButton<int>(
            onSelected: (value) async {
              if (value == 0) {
                final vm = Provider.of<CursoViewModel>(
                  context,
                  listen: false,
                );

                await vm.removeCurso(curso.id);
                onDeleted();
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
        ],
      ),
    );
  }
}
