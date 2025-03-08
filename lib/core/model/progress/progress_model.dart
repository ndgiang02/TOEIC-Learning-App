import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_model.freezed.dart';
part 'progress_model.g.dart';

@freezed
class ProgressModel with _$ProgressModel {
  factory ProgressModel({
    String? id,
    required String userId,
    required List<String> completedQuestions, // List of question IDs
    required int correctAnswers,
    required int wrongAnswers,
    DateTime? lastPracticed,
  }) = _ProgressModel;

  factory ProgressModel.fromJson(Map<String, dynamic> json) =>
      _$ProgressModelFromJson(json);
}
