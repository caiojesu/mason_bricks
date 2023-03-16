import '../../domain/entities/{{ feature_name.snakeCase() }}_entity.dart';
{{#use_json_serializable}}
import 'package:json_annotation/json_annotation.dart';
part '{{ feature_name.snakeCase() }}_model.g.dart';
{{/use_json_serializable}}
{{#use_json_serializable}}
@JsonSerializable(){{/use_json_serializable}}
class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}}Entity{
  //TODO: Populate model

  {{feature_name.pascalCase()}}Model() {}

{{#use_json_serializable}}
  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
    _${{feature_name.pascalCase()}}ModelFromJson(json);

  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}ModelToJson(this);

  {{/use_json_serializable}}

  {{feature_name.pascalCase()}}Entity toEntity() => {{feature_name.pascalCase()}}Entity();
}