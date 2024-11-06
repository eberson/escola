import 'package:escola/entidades/periodo.dart';
import 'package:flutter/material.dart';

class ComboPeriodo extends StatefulWidget {
  const ComboPeriodo({super.key});

  @override
  State<ComboPeriodo> createState() => _ComboPeriodoState();
}

class _ComboPeriodoState extends State<ComboPeriodo> {
  Periodo selectedValue = Periodo.values.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: DropdownButton<Periodo>(
        items: items,
        onChanged: onChanged,
      ),
    );
  }

  List<DropdownMenuItem<Periodo>> _items() {
    return Periodo.values
        .map(
          (p) => DropdownMenuItem(
            value: p,
            child: Text(p.description),
          ),
        )
        .toList();
  }
}
