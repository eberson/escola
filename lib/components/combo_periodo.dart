import 'package:escola/entidades/periodo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ComboPeriodo extends StatefulWidget {
  ValueChanged<Periodo>? onPeriodoSelected;

  ComboPeriodo({super.key, this.onPeriodoSelected});

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
        value: selectedValue,
        items: _items(),
        onChanged: (value) {
          if (widget.onPeriodoSelected != null) {
            widget.onPeriodoSelected!(value ?? Periodo.manha);
          }

          setState(() {
            selectedValue = value ?? Periodo.manha;
          });
        },
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
