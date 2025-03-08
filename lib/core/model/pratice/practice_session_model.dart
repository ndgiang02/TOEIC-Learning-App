import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_session_model.freezed.dart';
part 'practice_session_model.g.dart';

@freezed
class PracticeSessionModel with _$PracticeSessionModel {
  factory PracticeSessionModel({
    String? id,
    required String userId,
    required int part,
    required List<String> questions, // List of question IDs
    required int score,
    required DateTime createdAt,
  }) = _PracticeSessionModel;

  factory PracticeSessionModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeSessionModelFromJson(json);
}
