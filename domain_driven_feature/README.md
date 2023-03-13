# Domain Driven Feature

## Overview
A Mason brick that facilitates the creation of a feature based on the Domain-Driven Design architecture for small projects.


## Requirements
Install in your project [equatable](https://pub.dev/packages/equatable)  and [dartz](https://pub.dev/packages/dartz) from pub.dev.
```
flutter pub add equatable
flutter pub add dartz
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
      url: https://github.com/caiojesu/mason_bricks.git
      path: bricks/domain_driven_feature

```
Then run `mason get`to register the brick. Now you can use the brick in your project.
```
mason make domain_driven_feature
```

## Folder Structure

- Presentation layer: contains the application's widgets and pages.
- Application layer: contains the controllers.
- Domain layer: contains the entities and interfaces of repositories and controllers.
- Infrastructure layer: contains the implementations of the repositories.


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