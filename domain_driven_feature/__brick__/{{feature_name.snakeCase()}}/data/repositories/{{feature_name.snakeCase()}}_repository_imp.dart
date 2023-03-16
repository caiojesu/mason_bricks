import '../../domain/repositories/{{ feature_name.snakeCase() }}_repository.dart';
import '../../domain/datasources/{{ feature_name.snakeCase() }}_datasource.dart';

class {{feature_name.pascalCase()}}Repository implements I{{feature_name.pascalCase()}}Repository{
   final I{{feature_name.pascalCase()}}DataSource dataSource;
   {{feature_name.pascalCase()}}Repository(this.dataSource);
}