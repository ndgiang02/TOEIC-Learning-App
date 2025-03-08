import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    String? id,
    required String type, // "listening" | "reading"
    required int part,
    required String questionText,
    String? audio,
    String? image,
    required Map<String, String> options, // {"A": "Answer 1", "B": "Answer 2", ...}
    required String correctAnswer,
    String? explanation,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
