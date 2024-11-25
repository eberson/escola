import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

enum Periodo {
  @JsonValue(1)
  manha("Manhã", Colors.amber, Colors.black),
  @JsonValue(2)
  tarde("Tarde", Colors.green, Colors.white),
  @JsonValue(3)
  noite("Noite", Colors.purple, Colors.white);

  final String description;
  final Color corFundo;
  final Color corFonte;

  const Periodo(this.description, this.corFundo, this.corFonte);
}
