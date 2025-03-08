import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {
  factory ResultModel({
    String? id,
    required String userId,
    required String examId,
    required Map<String, int> score, // {"listening": 50, "reading": 50}
    required Map<String, String> answers, // {"q1": "A", "q2": "B"}
    required DateTime submittedAt,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}
