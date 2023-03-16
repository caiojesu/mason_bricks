<a href="https://github.com/felangel/mason"><img src="https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge" alt="Powered by Mason"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

# mason_bricks

## Overview
My collection of Mason Bricks that simplify the creation of frequently used code. With these bricks, you can quickly and easily create reliable and reusable code snippets that can be used across your projects.

## Bricks 

| name            | description                  |
| --------------- | ---------------------------- |
| [`domain_driven_feature`](https://github.com/caiojesu/mason_bricks/tree/main/domain_driven_feature) | Create a new feature using a Domain-driven approach architecture |


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