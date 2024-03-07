import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'movement.g.dart';

enum MovementRecurency {
  monthly,
  yearly
}

@JsonSerializable()
class Movement {
  final double amount;
  final DateTime dateExpensePredicted;
  final DateTime? dateActualExpense;
  final DateTime? dateBankMovement;
  final String concept;
  final String? comment;
  final MovementRecurency? recurrency;
  final List<String> tags;

  Movement({
    required this.amount,
    required this.dateExpensePredicted,
    this.dateActualExpense,
    this.dateBankMovement,
    required this.concept,
    this.comment,
    this.recurrency,
    required this.tags,
  });

  factory Movement.empty() {
    return Movement(amount: 0.0, concept: 'example', dateExpensePredicted: DateTime.now(), tags: ['example']);
  }

  Map<String, dynamic> toJson() => _$MovementToJson(this);

  factory Movement.fromJson(Map<String, dynamic> json) => _$MovementFromJson(json);

  factory Movement.fromJsonString(String json) => _$MovementFromJson(jsonDecode(json));

  static List<Movement> fromJsonListString(String val){
    var vv = List<Movement>.from(jsonDecode(val).map((item) => Movement.fromJson(item)));
    return vv;
  }
}
  