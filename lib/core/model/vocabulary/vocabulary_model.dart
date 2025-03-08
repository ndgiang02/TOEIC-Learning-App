import 'package:freezed_annotation/freezed_annotation.dart';

part 'vocabulary_model.freezed.dart';
part 'vocabulary_model.g.dart';

@freezed
class VocabularyModel with _$VocabularyModel {
  factory VocabularyModel({
    String? id,
    required String word,
    required String definition,
    required String example,
    required String partOfSpeech, // "noun", "verb", "adjective", "adverb"
    required String pronunciation,
    DateTime? createdAt,
  }) = _VocabularyModel;

  factory VocabularyModel.fromJson(Map<String, dynamic> json) =>
      _$VocabularyModelFromJson(json);
}
