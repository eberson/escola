import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum Periodo {
  @JsonValue(1) manha("Manhã", Colors.red, Colors.white),
  @JsonValue(2) tarde("Tarde", Colors.green, Colors.white),
  @JsonValue(3) noite("Noite", Colors.orange, Colors.white);

  final String description;
  final Color background;
  final Color text;

  const Periodo(this.description, this.background, this.text);
}
