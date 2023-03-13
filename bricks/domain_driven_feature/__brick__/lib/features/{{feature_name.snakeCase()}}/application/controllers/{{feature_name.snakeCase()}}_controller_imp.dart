import '../../domain/controllers/{{ feature_name.snakeCase() }}_controller.dart';
import '../../domain/repositories/{{ feature_name.snakeCase() }}_repository.dart';


class {{feature_name.pascalCase()}}Controller implements I{{feature_name.pascalCase()}}Controller{
  final I{{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;
  {{feature_name.pascalCase()}}Controller(this.{{feature_name.camelCase()}}Repository);
}