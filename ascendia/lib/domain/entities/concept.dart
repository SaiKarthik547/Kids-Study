import 'package:freezed_annotation/freezed_annotation.dart';

part 'concept.freezed.dart';
part 'concept.g.dart';

@freezed
class Concept with _$Concept {
  const factory Concept({
    required String id,
    required String subjectId,
    required String boardId,
    required int classLevel,
    required String title,
    required String description,
    required String bloomRange,
    @Default(1) int version,
    required List<String> prerequisiteIds,
  }) = _Concept;

  factory Concept.fromJson(Map<String, dynamic> json) => _$ConceptFromJson(json);
}
