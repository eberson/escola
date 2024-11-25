import 'dart:ui';

import 'package:escola/pages/home_page.dart';
import 'package:escola/pages/novo_curso_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Escola",
      routes: {
        "/": (_) => const HomePage(),
        "/novo-curso": (_) => const NovoCursoPage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.unknown
        },
      ),
    );
  }
}
