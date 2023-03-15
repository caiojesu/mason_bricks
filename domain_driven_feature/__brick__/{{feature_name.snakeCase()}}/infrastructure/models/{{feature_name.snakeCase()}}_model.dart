import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/{{ feature_name.snakeCase() }}_entity.dart';

part '{{ feature_name.snakeCase() }}_model.g.dart';

@JsonSerializable()
class {{feature_name.pascalCase()}}Model extends {{feature_name.pascalCase()}}Entity{
  //TODO: Populate model

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
    _${{feature_name.pascalCase()}}ModelFromJson(json);

  Map<String, dynamic> toJson() => _${{feature_name.pascalCase()}}ModelToJson(this);

  {{feature_name.pascalCase()}}Entity toEntity() => {{feature_name.pascalCase()}}Entity();
}