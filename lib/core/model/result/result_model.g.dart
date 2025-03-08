// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      examId: json['examId'] as String,
      score: Map<String, int>.from(json['score'] as Map),
      answers: Map<String, String>.from(json['answers'] as Map),
      submittedAt: DateTime.parse(json['submittedAt'] as String),
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'examId': instance.examId,
      'score': instance.score,
      'answers': instance.answers,
      'submittedAt': instance.submittedAt.toIso8601String(),
    };
