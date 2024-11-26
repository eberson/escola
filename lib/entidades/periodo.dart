import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum Periodo {
  @JsonValue(1)
  manha("Manhã", Colors.grey, Colors.black),
  @JsonValue(2)
  tarde("Tarde", Colors.amber, Colors.white),
  @JsonValue(3)
  noite("Noite", Colors.green, Colors.white);

  final String description;
  final Color background;
  final Color text;

  const Periodo(this.description, this.background, this.text);
}
