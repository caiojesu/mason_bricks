# Domain Driven Feature

## Overview
A Mason brick that facilitates the creation of a feature using a Domain-driven approach architecture.


## Requirements
Install in your project [json_serializable](https://pub.dev/packages/json_serializable), [json_annotation](https://pub.dev/packages/json_annotation) and [build_runner](https://pub.dev/packages/build_runner) from pub.dev to generate the model methods.
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

Inside your `mason.yaml` file, add the name of the brick and the Github repository link.

```
bricks:
  domain_driven_feature:
    git:
      url: https://github.com/caiojesu/mason_bricks
      path: domain_driven_feature

```
Then run `mason get` to register the brick. Now you can use the brick in your project.
```
mason make domain_driven_feature
```

## Folder Structure

- **Presentation layer**: contains the application's widgets and pages.
- **Application layer**: contains the page controllers.
- **Domain layer**: contains the entities and interfaces of repositories and controllers.
- **Infrastructure layer**: contains the implementations of the repositories.


 ## Variables 

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `feature_name` | The name of the feature | feature | `string` |

## Outputs
```

└── feature
    ├── presentation
    │   └── pages
	│       └── feature_page.dart
    ├── application
    │   └── controllers
    │   │   └── imp_feature_controller.dart
    ├── domain
    │   ├── entities
    │   │   └── feature_entity.dart
    │   ├── controllers
    │   │   └── feature_controller.dart
    │   └── repositories
    │   │   └── feature_repository.dart
    └── infrastructure
        ├── models
        │   └── feature_model.dart
        └── repositories
	        └── imp_feature_repository.dart


```