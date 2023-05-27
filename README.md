# Selenium WebDriver CucumberJS example project

The project is based on https://cucumber.io/docs/guides/10-minute-tutorial/?lang=javascript

## Project file structure

```
├── features
│   ├── step_definitions
│   │   └── stepdefs.js
│   └── is_it_friday_yet.feature
├── cucumber-report.html
├── cucumber-report.json
├── cucumber.js
├── package-lock.json
└── package.json
└── README.md 
```

1. Scenarios are defined in .feature files, which are stored in the features directory 
2. Step definitions are defined in .js filesm which are stored in the step_definitions directory
3. Reports in,
    - html format is stored in cucumber-report.html
    - json format is stored in cucumber-report.json
4. package.json holds important information about the project. It contains human-readable metadata about the project (like the project name and description) as well as functional metadata like the package version number and a list of dependencies required by the application
5. README.md file to communicate important information about Selenium WebDriver, CucumberJS example project

### Test

Run standalone

```sh
npx cucumber-js
```

## Docker build

docker build command to build all stages

```sh
docker build -t example-project . 
```

### Docker multi-stage build for testing

docker build command with --target test flag so that we specifically run the test build stage

```sh
docker build -t example-project --target test . 
```

## Docker run test

Docker command to start the container and run test
```sh
docker run -it --rm --name cucumber-test example-project 
```
