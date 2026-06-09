// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Concept _$ConceptFromJson(Map<String, dynamic> json) {
  return _Concept.fromJson(json);
}

/// @nodoc
mixin _$Concept {
  String get id => throw _privateConstructorUsedError;
  String get subjectId => throw _privateConstructorUsedError;
  String get boardId => throw _privateConstructorUsedError;
  int get classLevel => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bloomRange => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  List<String> get prerequisiteIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConceptCopyWith<Concept> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptCopyWith<$Res> {
  factory $ConceptCopyWith(Concept value, $Res Function(Concept) then) =
      _$ConceptCopyWithImpl<$Res, Concept>;
  @useResult
  $Res call(
      {String id,
      String subjectId,
      String boardId,
      int classLevel,
      String title,
      String description,
      String bloomRange,
      int version,
      List<String> prerequisiteIds});
}

/// @nodoc
class _$ConceptCopyWithImpl<$Res, $Val extends Concept>
    implements $ConceptCopyWith<$Res> {
  _$ConceptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectId = null,
    Object? boardId = null,
    Object? classLevel = null,
    Object? title = null,
    Object? description = null,
    Object? bloomRange = null,
    Object? version = null,
    Object? prerequisiteIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String,
      classLevel: null == classLevel
          ? _value.classLevel
          : classLevel // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bloomRange: null == bloomRange
          ? _value.bloomRange
          : bloomRange // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisiteIds: null == prerequisiteIds
          ? _value.prerequisiteIds
          : prerequisiteIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptImplCopyWith<$Res> implements $ConceptCopyWith<$Res> {
  factory _$$ConceptImplCopyWith(
          _$ConceptImpl value, $Res Function(_$ConceptImpl) then) =
      __$$ConceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String subjectId,
      String boardId,
      int classLevel,
      String title,
      String description,
      String bloomRange,
      int version,
      List<String> prerequisiteIds});
}

/// @nodoc
class __$$ConceptImplCopyWithImpl<$Res>
    extends _$ConceptCopyWithImpl<$Res, _$ConceptImpl>
    implements _$$ConceptImplCopyWith<$Res> {
  __$$ConceptImplCopyWithImpl(
      _$ConceptImpl _value, $Res Function(_$ConceptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectId = null,
    Object? boardId = null,
    Object? classLevel = null,
    Object? title = null,
    Object? description = null,
    Object? bloomRange = null,
    Object? version = null,
    Object? prerequisiteIds = null,
  }) {
    return _then(_$ConceptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String,
      classLevel: null == classLevel
          ? _value.classLevel
          : classLevel // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bloomRange: null == bloomRange
          ? _value.bloomRange
          : bloomRange // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisiteIds: null == prerequisiteIds
          ? _value._prerequisiteIds
          : prerequisiteIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptImpl implements _Concept {
  const _$ConceptImpl(
      {required this.id,
      required this.subjectId,
      required this.boardId,
      required this.classLevel,
      required this.title,
      required this.description,
      required this.bloomRange,
      this.version = 1,
      required final List<String> prerequisiteIds})
      : _prerequisiteIds = prerequisiteIds;

  factory _$ConceptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptImplFromJson(json);

  @override
  final String id;
  @override
  final String subjectId;
  @override
  final String boardId;
  @override
  final int classLevel;
  @override
  final String title;
  @override
  final String description;
  @override
  final String bloomRange;
  @override
  @JsonKey()
  final int version;
  final List<String> _prerequisiteIds;
  @override
  List<String> get prerequisiteIds {
    if (_prerequisiteIds is EqualUnmodifiableListView) return _prerequisiteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisiteIds);
  }

  @override
  String toString() {
    return 'Concept(id: $id, subjectId: $subjectId, boardId: $boardId, classLevel: $classLevel, title: $title, description: $description, bloomRange: $bloomRange, version: $version, prerequisiteIds: $prerequisiteIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.boardId, boardId) || other.boardId == boardId) &&
            (identical(other.classLevel, classLevel) ||
                other.classLevel == classLevel) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bloomRange, bloomRange) ||
                other.bloomRange == bloomRange) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._prerequisiteIds, _prerequisiteIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subjectId,
      boardId,
      classLevel,
      title,
      description,
      bloomRange,
      version,
      const DeepCollectionEquality().hash(_prerequisiteIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptImplCopyWith<_$ConceptImpl> get copyWith =>
      __$$ConceptImplCopyWithImpl<_$ConceptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptImplToJson(
      this,
    );
  }
}

abstract class _Concept implements Concept {
  const factory _Concept(
      {required final String id,
      required final String subjectId,
      required final String boardId,
      required final int classLevel,
      required final String title,
      required final String description,
      required final String bloomRange,
      final int version,
      required final List<String> prerequisiteIds}) = _$ConceptImpl;

  factory _Concept.fromJson(Map<String, dynamic> json) = _$ConceptImpl.fromJson;

  @override
  String get id;
  @override
  String get subjectId;
  @override
  String get boardId;
  @override
  int get classLevel;
  @override
  String get title;
  @override
  String get description;
  @override
  String get bloomRange;
  @override
  int get version;
  @override
  List<String> get prerequisiteIds;
  @override
  @JsonKey(ignore: true)
  _$$ConceptImplCopyWith<_$ConceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
