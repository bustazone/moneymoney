// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movement _$MovementFromJson(Map<String, dynamic> json) => Movement(
      amount: (json['amount'] as num).toDouble(),
      dateExpensePredicted:
          DateTime.parse(json['dateExpensePredicted'] as String),
      dateActualExpense: json['dateActualExpense'] == null
          ? null
          : DateTime.parse(json['dateActualExpense'] as String),
      dateBankMovement: json['dateBankMovement'] == null
          ? null
          : DateTime.parse(json['dateBankMovement'] as String),
      concept: json['concept'] as String,
      comment: json['comment'] as String?,
      recurrency:
          $enumDecodeNullable(_$MovementRecurencyEnumMap, json['recurrency']),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MovementToJson(Movement instance) => <String, dynamic>{
      'amount': instance.amount,
      'dateExpensePredicted': instance.dateExpensePredicted.toIso8601String(),
      'dateActualExpense': instance.dateActualExpense?.toIso8601String(),
      'dateBankMovement': instance.dateBankMovement?.toIso8601String(),
      'concept': instance.concept,
      'comment': instance.comment,
      'recurrency': _$MovementRecurencyEnumMap[instance.recurrency],
      'tags': instance.tags,
    };

const _$MovementRecurencyEnumMap = {
  MovementRecurency.monthly: 'monthly',
  MovementRecurency.yearly: 'yearly',
};
