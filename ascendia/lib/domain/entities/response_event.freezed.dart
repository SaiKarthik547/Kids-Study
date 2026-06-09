// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseEvent _$ResponseEventFromJson(Map<String, dynamic> json) {
  return _ResponseEvent.fromJson(json);
}

/// @nodoc
mixin _$ResponseEvent {
  String get eventId => throw _privateConstructorUsedError;
  int get schemaVersion => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  int get questionVersion => throw _privateConstructorUsedError;
  String get selectedAnswer => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  int get attemptNumber => throw _privateConstructorUsedError;
  int get hintLevel => throw _privateConstructorUsedError;
  int get responseTimeMs => throw _privateConstructorUsedError;
  DateTime get localOccurredAt => throw _privateConstructorUsedError;
  DateTime? get receivedAt => throw _privateConstructorUsedError;
  String get syncId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseEventCopyWith<ResponseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEventCopyWith<$Res> {
  factory $ResponseEventCopyWith(
          ResponseEvent value, $Res Function(ResponseEvent) then) =
      _$ResponseEventCopyWithImpl<$Res, ResponseEvent>;
  @useResult
  $Res call(
      {String eventId,
      int schemaVersion,
      String studentId,
      String questionId,
      int questionVersion,
      String selectedAnswer,
      String correctAnswer,
      int attemptNumber,
      int hintLevel,
      int responseTimeMs,
      DateTime localOccurredAt,
      DateTime? receivedAt,
      String syncId});
}

/// @nodoc
class _$ResponseEventCopyWithImpl<$Res, $Val extends ResponseEvent>
    implements $ResponseEventCopyWith<$Res> {
  _$ResponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? schemaVersion = null,
    Object? studentId = null,
    Object? questionId = null,
    Object? questionVersion = null,
    Object? selectedAnswer = null,
    Object? correctAnswer = null,
    Object? attemptNumber = null,
    Object? hintLevel = null,
    Object? responseTimeMs = null,
    Object? localOccurredAt = null,
    Object? receivedAt = freezed,
    Object? syncId = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionVersion: null == questionVersion
          ? _value.questionVersion
          : questionVersion // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: null == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hintLevel: null == hintLevel
          ? _value.hintLevel
          : hintLevel // ignore: cast_nullable_to_non_nullable
              as int,
      responseTimeMs: null == responseTimeMs
          ? _value.responseTimeMs
          : responseTimeMs // ignore: cast_nullable_to_non_nullable
              as int,
      localOccurredAt: null == localOccurredAt
          ? _value.localOccurredAt
          : localOccurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncId: null == syncId
          ? _value.syncId
          : syncId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseEventImplCopyWith<$Res>
    implements $ResponseEventCopyWith<$Res> {
  factory _$$ResponseEventImplCopyWith(
          _$ResponseEventImpl value, $Res Function(_$ResponseEventImpl) then) =
      __$$ResponseEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      int schemaVersion,
      String studentId,
      String questionId,
      int questionVersion,
      String selectedAnswer,
      String correctAnswer,
      int attemptNumber,
      int hintLevel,
      int responseTimeMs,
      DateTime localOccurredAt,
      DateTime? receivedAt,
      String syncId});
}

/// @nodoc
class __$$ResponseEventImplCopyWithImpl<$Res>
    extends _$ResponseEventCopyWithImpl<$Res, _$ResponseEventImpl>
    implements _$$ResponseEventImplCopyWith<$Res> {
  __$$ResponseEventImplCopyWithImpl(
      _$ResponseEventImpl _value, $Res Function(_$ResponseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? schemaVersion = null,
    Object? studentId = null,
    Object? questionId = null,
    Object? questionVersion = null,
    Object? selectedAnswer = null,
    Object? correctAnswer = null,
    Object? attemptNumber = null,
    Object? hintLevel = null,
    Object? responseTimeMs = null,
    Object? localOccurredAt = null,
    Object? receivedAt = freezed,
    Object? syncId = null,
  }) {
    return _then(_$ResponseEventImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      questionVersion: null == questionVersion
          ? _value.questionVersion
          : questionVersion // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: null == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      attemptNumber: null == attemptNumber
          ? _value.attemptNumber
          : attemptNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hintLevel: null == hintLevel
          ? _value.hintLevel
          : hintLevel // ignore: cast_nullable_to_non_nullable
              as int,
      responseTimeMs: null == responseTimeMs
          ? _value.responseTimeMs
          : responseTimeMs // ignore: cast_nullable_to_non_nullable
              as int,
      localOccurredAt: null == localOccurredAt
          ? _value.localOccurredAt
          : localOccurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncId: null == syncId
          ? _value.syncId
          : syncId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseEventImpl implements _ResponseEvent {
  const _$ResponseEventImpl(
      {required this.eventId,
      this.schemaVersion = 1,
      required this.studentId,
      required this.questionId,
      required this.questionVersion,
      required this.selectedAnswer,
      required this.correctAnswer,
      required this.attemptNumber,
      required this.hintLevel,
      required this.responseTimeMs,
      required this.localOccurredAt,
      this.receivedAt,
      required this.syncId});

  factory _$ResponseEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseEventImplFromJson(json);

  @override
  final String eventId;
  @override
  @JsonKey()
  final int schemaVersion;
  @override
  final String studentId;
  @override
  final String questionId;
  @override
  final int questionVersion;
  @override
  final String selectedAnswer;
  @override
  final String correctAnswer;
  @override
  final int attemptNumber;
  @override
  final int hintLevel;
  @override
  final int responseTimeMs;
  @override
  final DateTime localOccurredAt;
  @override
  final DateTime? receivedAt;
  @override
  final String syncId;

  @override
  String toString() {
    return 'ResponseEvent(eventId: $eventId, schemaVersion: $schemaVersion, studentId: $studentId, questionId: $questionId, questionVersion: $questionVersion, selectedAnswer: $selectedAnswer, correctAnswer: $correctAnswer, attemptNumber: $attemptNumber, hintLevel: $hintLevel, responseTimeMs: $responseTimeMs, localOccurredAt: $localOccurredAt, receivedAt: $receivedAt, syncId: $syncId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.schemaVersion, schemaVersion) ||
                other.schemaVersion == schemaVersion) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.questionVersion, questionVersion) ||
                other.questionVersion == questionVersion) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.attemptNumber, attemptNumber) ||
                other.attemptNumber == attemptNumber) &&
            (identical(other.hintLevel, hintLevel) ||
                other.hintLevel == hintLevel) &&
            (identical(other.responseTimeMs, responseTimeMs) ||
                other.responseTimeMs == responseTimeMs) &&
            (identical(other.localOccurredAt, localOccurredAt) ||
                other.localOccurredAt == localOccurredAt) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            (identical(other.syncId, syncId) || other.syncId == syncId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      schemaVersion,
      studentId,
      questionId,
      questionVersion,
      selectedAnswer,
      correctAnswer,
      attemptNumber,
      hintLevel,
      responseTimeMs,
      localOccurredAt,
      receivedAt,
      syncId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseEventImplCopyWith<_$ResponseEventImpl> get copyWith =>
      __$$ResponseEventImplCopyWithImpl<_$ResponseEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseEventImplToJson(
      this,
    );
  }
}

abstract class _ResponseEvent implements ResponseEvent {
  const factory _ResponseEvent(
      {required final String eventId,
      final int schemaVersion,
      required final String studentId,
      required final String questionId,
      required final int questionVersion,
      required final String selectedAnswer,
      required final String correctAnswer,
      required final int attemptNumber,
      required final int hintLevel,
      required final int responseTimeMs,
      required final DateTime localOccurredAt,
      final DateTime? receivedAt,
      required final String syncId}) = _$ResponseEventImpl;

  factory _ResponseEvent.fromJson(Map<String, dynamic> json) =
      _$ResponseEventImpl.fromJson;

  @override
  String get eventId;
  @override
  int get schemaVersion;
  @override
  String get studentId;
  @override
  String get questionId;
  @override
  int get questionVersion;
  @override
  String get selectedAnswer;
  @override
  String get correctAnswer;
  @override
  int get attemptNumber;
  @override
  int get hintLevel;
  @override
  int get responseTimeMs;
  @override
  DateTime get localOccurredAt;
  @override
  DateTime? get receivedAt;
  @override
  String get syncId;
  @override
  @JsonKey(ignore: true)
  _$$ResponseEventImplCopyWith<_$ResponseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
