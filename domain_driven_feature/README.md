# Domain Driven Feature

A Mason brick that facilitates the creation of a feature using a Domain-driven approach architecture.


## Requirements
If you want to generate model methods with [Json Serializable](https://pub.dev/packages/json_serializable) you will need to install in your project [json_serializable](https://pub.dev/packages/json_serializable), [json_annotation](https://pub.dev/packages/json_annotation) and [build_runner](https://pub.dev/packages/build_runner) from pub.dev.
These packages will allow the brick to generate the initial code for your models.
```
dependencies:
  flutter:
    sdk: flutter
  json_annotation:
  
dev_dependencies:
  build_runner:
  json_serializable:
```
## How to Use
First make sure you have [mason_cli](https://pub.dev/packages/mason_cli) installed.
```
dart pub global activate mason_cli
```
Or using brew: 
```
brew tap felangel/mason
brew install mason
```

Create your mason project by running `mason init` in your project.

Then run `mason add domain_driven_feature` to get the brick from [BrickHub](https://brickhub.dev/bricks/domain_driven_feature/0.2.0).

Now you can use the brick in your project:

```
mason make domain_driven_feature
```

## Folder Structure

- **Presentation**: contains the application's UI and the page controllers.
- **Domain**: contains the entities and interfaces of repositories, data sources and controllers.
- **Data**: contains the models and implementations of the repositories and data sources.


 ## Variables 

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `feature_name` | The name of the feature | feature | `string` |
| `use_json_serializable` | Use Json Serializable in the models | true | `boolean` |

## Outputs
```

└── feature
    ├── presentation
    │   ├── controllers
    │   │   └── feature_controller_imp.dart    
    │   └── pages
	│       └── feature_page.dart
    ├── domain
    │   ├── entities
    │   │   └── feature_entity.dart
    │   ├── controllers
    │   │   └── feature_controller.dart
    │   ├── repositories
    │   │   └── feature_repository.dart   
    │   └── datasources
    │       └── feature_datasource.dart
    └── data
        ├── models
        │   └── feature_model.dart
        ├── repositories
        │   └── feature_repository_imp.dart         
        └── datasources
	        └── feature_datasource_imp.dart


```