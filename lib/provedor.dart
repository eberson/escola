import 'package:escola/app.dart';
import 'package:escola/vm/curso_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provedor extends StatelessWidget {
  const Provedor({ super.key });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        CursoViewModel.create(),
      ],
      child: const Aplicacao(),
    );
  }
}