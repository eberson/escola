import 'package:escola/entidades/periodo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectPeriodo extends StatefulWidget {
  ValueChanged<Periodo>? onChange;

  SelectPeriodo({super.key, this.onChange});

  @override
  State<SelectPeriodo> createState() => _SelectPeriodoState();
}

class _SelectPeriodoState extends State<SelectPeriodo> {
  Periodo selectedValue = Periodo.manha;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: DropdownButton<Periodo>(
        value: selectedValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        items: _items(),
        onChanged: (value) {
          if (widget.onChange != null) {
            widget.onChange!(value ?? Periodo.manha);
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