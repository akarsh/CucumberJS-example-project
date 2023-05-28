# CucumberJS example project

The project is based on [10-minute-tutorial](https://cucumber.io/docs/guides/10-minute-tutorial/?lang=javascript). It is created to demonstrate how to use Docker CI for development and Jenkins CI for remote development.

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
└── Dockerfile
└── Jenkinsfile
```

1. Scenarios are defined in .feature files, which are stored in the features directory 
2. Step definitions are defined in .js filesm which are stored in the step_definitions directory
3. Reports in,
    - html format is stored in cucumber-report.html
    - json format is stored in cucumber-report.json
4. package.json holds important information about the project. It contains human-readable metadata about the project (like the project name and description) as well as functional metadata like the package version number and a list of dependencies required by the application
5. README.md file to communicate important information about Selenium WebDriver, CucumberJS example project
6. Dockerfile informs Docker what base image we would like to use for the Node.js application project
7. Jenkinsfile is a text file that contains the definition of a Jenkins Pipeline and is checked into source control

## Development

### Install

Install dependencies

```sh
npm install
```

### Test

Run standalone

```sh
npx cucumber-js
```

# Docker CI

## Docker multi-stage build for install
docker build command with --target install flag so that we specifically run the install build stage
```sh
docker build -t example-project-install --target install . 
```

### Docker run install

Docker command to start the container and run install
```sh
docker run --rm -v ${PWD}:/usr/src/app/ --name example-project-install example-project-install 
```

## Docker multi-stage build for testing
docker build command with --target test flag so that we specifically run the test build stage
```sh
docker build -t example-project-test --target test . 
```

### Docker run test

Docker command to start the container and run test
```sh
docker run --rm -v ${PWD}:/usr/src/app/ --name example-project-test example-project-test
```
