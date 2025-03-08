// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VocabularyModel _$VocabularyModelFromJson(Map<String, dynamic> json) {
  return _VocabularyModel.fromJson(json);
}

/// @nodoc
mixin _$VocabularyModel {
  String? get id => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get definition => throw _privateConstructorUsedError;
  String get example => throw _privateConstructorUsedError;
  String get partOfSpeech =>
      throw _privateConstructorUsedError; // "noun", "verb", "adjective", "adverb"
  String get pronunciation => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this VocabularyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VocabularyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VocabularyModelCopyWith<VocabularyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabularyModelCopyWith<$Res> {
  factory $VocabularyModelCopyWith(
          VocabularyModel value, $Res Function(VocabularyModel) then) =
      _$VocabularyModelCopyWithImpl<$Res, VocabularyModel>;
  @useResult
  $Res call(
      {String? id,
      String word,
      String definition,
      String example,
      String partOfSpeech,
      String pronunciation,
      DateTime? createdAt});
}

/// @nodoc
class _$VocabularyModelCopyWithImpl<$Res, $Val extends VocabularyModel>
    implements $VocabularyModelCopyWith<$Res> {
  _$VocabularyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VocabularyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = null,
    Object? definition = null,
    Object? example = null,
    Object? partOfSpeech = null,
    Object? pronunciation = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocabularyModelImplCopyWith<$Res>
    implements $VocabularyModelCopyWith<$Res> {
  factory _$$VocabularyModelImplCopyWith(_$VocabularyModelImpl value,
          $Res Function(_$VocabularyModelImpl) then) =
      __$$VocabularyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String word,
      String definition,
      String example,
      String partOfSpeech,
      String pronunciation,
      DateTime? createdAt});
}

/// @nodoc
class __$$VocabularyModelImplCopyWithImpl<$Res>
    extends _$VocabularyModelCopyWithImpl<$Res, _$VocabularyModelImpl>
    implements _$$VocabularyModelImplCopyWith<$Res> {
  __$$VocabularyModelImplCopyWithImpl(
      _$VocabularyModelImpl _value, $Res Function(_$VocabularyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VocabularyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? word = null,
    Object? definition = null,
    Object? example = null,
    Object? partOfSpeech = null,
    Object? pronunciation = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$VocabularyModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String,
      pronunciation: null == pronunciation
          ? _value.pronunciation
          : pronunciation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocabularyModelImpl implements _VocabularyModel {
  _$VocabularyModelImpl(
      {this.id,
      required this.word,
      required this.definition,
      required this.example,
      required this.partOfSpeech,
      required this.pronunciation,
      this.createdAt});

  factory _$VocabularyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocabularyModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String word;
  @override
  final String definition;
  @override
  final String example;
  @override
  final String partOfSpeech;
// "noun", "verb", "adjective", "adverb"
  @override
  final String pronunciation;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'VocabularyModel(id: $id, word: $word, definition: $definition, example: $example, partOfSpeech: $partOfSpeech, pronunciation: $pronunciation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocabularyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            (identical(other.pronunciation, pronunciation) ||
                other.pronunciation == pronunciation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, word, definition, example,
      partOfSpeech, pronunciation, createdAt);

  /// Create a copy of VocabularyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VocabularyModelImplCopyWith<_$VocabularyModelImpl> get copyWith =>
      __$$VocabularyModelImplCopyWithImpl<_$VocabularyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocabularyModelImplToJson(
      this,
    );
  }
}

abstract class _VocabularyModel implements VocabularyModel {
  factory _VocabularyModel(
      {final String? id,
      required final String word,
      required final String definition,
      required final String example,
      required final String partOfSpeech,
      required final String pronunciation,
      final DateTime? createdAt}) = _$VocabularyModelImpl;

  factory _VocabularyModel.fromJson(Map<String, dynamic> json) =
      _$VocabularyModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get word;
  @override
  String get definition;
  @override
  String get example;
  @override
  String get partOfSpeech; // "noun", "verb", "adjective", "adverb"
  @override
  String get pronunciation;
  @override
  DateTime? get createdAt;

  /// Create a copy of VocabularyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VocabularyModelImplCopyWith<_$VocabularyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
