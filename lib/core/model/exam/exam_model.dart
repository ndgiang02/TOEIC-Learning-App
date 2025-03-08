import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_model.freezed.dart';
part 'exam_model.g.dart';

@freezed
class ExamModel with _$ExamModel {
  factory ExamModel({
    String? id,
    required String title,
    required String description,
    required List<String> questions, // List of question IDs
    required int duration, // Duration in minutes
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ExamModel;

  factory ExamModel.fromJson(Map<String, dynamic> json) =>
      _$ExamModelFromJson(json);
}
