import 'package:json_annotation/json_annotation.dart';

enum Periodo {
  @JsonValue(1) manha("Manhã"),
  @JsonValue(2) tarde("Tarde"),
  @JsonValue(3) noite("Noite");

  final String description;

  const Periodo(this.description);
}
