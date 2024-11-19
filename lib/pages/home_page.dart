import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
    );
  }
}
