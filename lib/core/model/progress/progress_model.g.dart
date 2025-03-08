// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressModelImpl _$$ProgressModelImplFromJson(Map<String, dynamic> json) =>
    _$ProgressModelImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      completedQuestions: (json['completedQuestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      wrongAnswers: (json['wrongAnswers'] as num).toInt(),
      lastPracticed: json['lastPracticed'] == null
          ? null
          : DateTime.parse(json['lastPracticed'] as String),
    );

Map<String, dynamic> _$$ProgressModelImplToJson(_$ProgressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'completedQuestions': instance.completedQuestions,
      'correctAnswers': instance.correctAnswers,
      'wrongAnswers': instance.wrongAnswers,
      'lastPracticed': instance.lastPracticed?.toIso8601String(),
    };
