import 'package:json_annotation/json_annotation.dart';

part 'rag_response.g.dart';

@JsonSerializable()
class RagResponse {
  final String answer;

  RagResponse({required this.answer});

  factory RagResponse.fromJson(Map<String, dynamic> json) =>
      _$RagResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RagResponseToJson(this);
}
