// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticeSessionModelImpl _$$PracticeSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PracticeSessionModelImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      part: (json['part'] as num).toInt(),
      questions:
          (json['questions'] as List<dynamic>).map((e) => e as String).toList(),
      score: (json['score'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PracticeSessionModelImplToJson(
        _$PracticeSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'part': instance.part,
      'questions': instance.questions,
      'score': instance.score,
      'createdAt': instance.createdAt.toIso8601String(),
    };
