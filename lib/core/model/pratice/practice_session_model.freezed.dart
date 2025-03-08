// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PracticeSessionModel _$PracticeSessionModelFromJson(Map<String, dynamic> json) {
  return _PracticeSessionModel.fromJson(json);
}

/// @nodoc
mixin _$PracticeSessionModel {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get part => throw _privateConstructorUsedError;
  List<String> get questions =>
      throw _privateConstructorUsedError; // List of question IDs
  int get score => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PracticeSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PracticeSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticeSessionModelCopyWith<PracticeSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeSessionModelCopyWith<$Res> {
  factory $PracticeSessionModelCopyWith(PracticeSessionModel value,
          $Res Function(PracticeSessionModel) then) =
      _$PracticeSessionModelCopyWithImpl<$Res, PracticeSessionModel>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      int part,
      List<String> questions,
      int score,
      DateTime createdAt});
}

/// @nodoc
class _$PracticeSessionModelCopyWithImpl<$Res,
        $Val extends PracticeSessionModel>
    implements $PracticeSessionModelCopyWith<$Res> {
  _$PracticeSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticeSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? part = null,
    Object? questions = null,
    Object? score = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      part: null == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticeSessionModelImplCopyWith<$Res>
    implements $PracticeSessionModelCopyWith<$Res> {
  factory _$$PracticeSessionModelImplCopyWith(_$PracticeSessionModelImpl value,
          $Res Function(_$PracticeSessionModelImpl) then) =
      __$$PracticeSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      int part,
      List<String> questions,
      int score,
      DateTime createdAt});
}

/// @nodoc
class __$$PracticeSessionModelImplCopyWithImpl<$Res>
    extends _$PracticeSessionModelCopyWithImpl<$Res, _$PracticeSessionModelImpl>
    implements _$$PracticeSessionModelImplCopyWith<$Res> {
  __$$PracticeSessionModelImplCopyWithImpl(_$PracticeSessionModelImpl _value,
      $Res Function(_$PracticeSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticeSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? part = null,
    Object? questions = null,
    Object? score = null,
    Object? createdAt = null,
  }) {
    return _then(_$PracticeSessionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      part: null == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PracticeSessionModelImpl implements _PracticeSessionModel {
  _$PracticeSessionModelImpl(
      {this.id,
      required this.userId,
      required this.part,
      required final List<String> questions,
      required this.score,
      required this.createdAt})
      : _questions = questions;

  factory _$PracticeSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PracticeSessionModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final int part;
  final List<String> _questions;
  @override
  List<String> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

// List of question IDs
  @override
  final int score;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PracticeSessionModel(id: $id, userId: $userId, part: $part, questions: $questions, score: $score, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticeSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.part, part) || other.part == part) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, part,
      const DeepCollectionEquality().hash(_questions), score, createdAt);

  /// Create a copy of PracticeSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticeSessionModelImplCopyWith<_$PracticeSessionModelImpl>
      get copyWith =>
          __$$PracticeSessionModelImplCopyWithImpl<_$PracticeSessionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticeSessionModelImplToJson(
      this,
    );
  }
}

abstract class _PracticeSessionModel implements PracticeSessionModel {
  factory _PracticeSessionModel(
      {final String? id,
      required final String userId,
      required final int part,
      required final List<String> questions,
      required final int score,
      required final DateTime createdAt}) = _$PracticeSessionModelImpl;

  factory _PracticeSessionModel.fromJson(Map<String, dynamic> json) =
      _$PracticeSessionModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  int get part;
  @override
  List<String> get questions; // List of question IDs
  @override
  int get score;
  @override
  DateTime get createdAt;

  /// Create a copy of PracticeSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticeSessionModelImplCopyWith<_$PracticeSessionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
