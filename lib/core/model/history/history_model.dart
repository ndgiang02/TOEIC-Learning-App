import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@freezed
class HistoryModel with _$HistoryModel {
  factory HistoryModel({
    String? id,
    required String userId,
    required String action, // "start_exam", "finish_exam", "practice_question", "view_word"
    required String targetId, // Exam ID, Question ID, or Vocabulary ID
    required DateTime timestamp,
  }) = _HistoryModel;

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);
}
