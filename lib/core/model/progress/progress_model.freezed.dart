// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgressModel _$ProgressModelFromJson(Map<String, dynamic> json) {
  return _ProgressModel.fromJson(json);
}

/// @nodoc
mixin _$ProgressModel {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<String> get completedQuestions =>
      throw _privateConstructorUsedError; // List of question IDs
  int get correctAnswers => throw _privateConstructorUsedError;
  int get wrongAnswers => throw _privateConstructorUsedError;
  DateTime? get lastPracticed => throw _privateConstructorUsedError;

  /// Serializes this ProgressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressModelCopyWith<ProgressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressModelCopyWith<$Res> {
  factory $ProgressModelCopyWith(
          ProgressModel value, $Res Function(ProgressModel) then) =
      _$ProgressModelCopyWithImpl<$Res, ProgressModel>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      List<String> completedQuestions,
      int correctAnswers,
      int wrongAnswers,
      DateTime? lastPracticed});
}

/// @nodoc
class _$ProgressModelCopyWithImpl<$Res, $Val extends ProgressModel>
    implements $ProgressModelCopyWith<$Res> {
  _$ProgressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? completedQuestions = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? lastPracticed = freezed,
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
      completedQuestions: null == completedQuestions
          ? _value.completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      lastPracticed: freezed == lastPracticed
          ? _value.lastPracticed
          : lastPracticed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressModelImplCopyWith<$Res>
    implements $ProgressModelCopyWith<$Res> {
  factory _$$ProgressModelImplCopyWith(
          _$ProgressModelImpl value, $Res Function(_$ProgressModelImpl) then) =
      __$$ProgressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      List<String> completedQuestions,
      int correctAnswers,
      int wrongAnswers,
      DateTime? lastPracticed});
}

/// @nodoc
class __$$ProgressModelImplCopyWithImpl<$Res>
    extends _$ProgressModelCopyWithImpl<$Res, _$ProgressModelImpl>
    implements _$$ProgressModelImplCopyWith<$Res> {
  __$$ProgressModelImplCopyWithImpl(
      _$ProgressModelImpl _value, $Res Function(_$ProgressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? completedQuestions = null,
    Object? correctAnswers = null,
    Object? wrongAnswers = null,
    Object? lastPracticed = freezed,
  }) {
    return _then(_$ProgressModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      completedQuestions: null == completedQuestions
          ? _value._completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      wrongAnswers: null == wrongAnswers
          ? _value.wrongAnswers
          : wrongAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      lastPracticed: freezed == lastPracticed
          ? _value.lastPracticed
          : lastPracticed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressModelImpl implements _ProgressModel {
  _$ProgressModelImpl(
      {this.id,
      required this.userId,
      required final List<String> completedQuestions,
      required this.correctAnswers,
      required this.wrongAnswers,
      this.lastPracticed})
      : _completedQuestions = completedQuestions;

  factory _$ProgressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  final List<String> _completedQuestions;
  @override
  List<String> get completedQuestions {
    if (_completedQuestions is EqualUnmodifiableListView)
      return _completedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedQuestions);
  }

// List of question IDs
  @override
  final int correctAnswers;
  @override
  final int wrongAnswers;
  @override
  final DateTime? lastPracticed;

  @override
  String toString() {
    return 'ProgressModel(id: $id, userId: $userId, completedQuestions: $completedQuestions, correctAnswers: $correctAnswers, wrongAnswers: $wrongAnswers, lastPracticed: $lastPracticed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._completedQuestions, _completedQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.wrongAnswers, wrongAnswers) ||
                other.wrongAnswers == wrongAnswers) &&
            (identical(other.lastPracticed, lastPracticed) ||
                other.lastPracticed == lastPracticed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_completedQuestions),
      correctAnswers,
      wrongAnswers,
      lastPracticed);

  /// Create a copy of ProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressModelImplCopyWith<_$ProgressModelImpl> get copyWith =>
      __$$ProgressModelImplCopyWithImpl<_$ProgressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressModelImplToJson(
      this,
    );
  }
}

abstract class _ProgressModel implements ProgressModel {
  factory _ProgressModel(
      {final String? id,
      required final String userId,
      required final List<String> completedQuestions,
      required final int correctAnswers,
      required final int wrongAnswers,
      final DateTime? lastPracticed}) = _$ProgressModelImpl;

  factory _ProgressModel.fromJson(Map<String, dynamic> json) =
      _$ProgressModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  List<String> get completedQuestions; // List of question IDs
  @override
  int get correctAnswers;
  @override
  int get wrongAnswers;
  @override
  DateTime? get lastPracticed;

  /// Create a copy of ProgressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressModelImplCopyWith<_$ProgressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
