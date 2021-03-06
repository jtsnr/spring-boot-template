# spring-boot-template
A template for Spring Boot projects

## Code Quality

### Checkstyle
This project uses [Checkstyle plugin](https://docs.gradle.org/current/userguide/checkstyle_plugin.html) to perform quality checks on the Java source files.

### PMD
This project uses [PMD plugin](https://docs.gradle.org/current/userguide/pmd_plugin.html) to perform quality checks on the Java source files.

### JaCoCo
This project uses [JaCoCo plugin](https://docs.gradle.org/current/userguide/jacoco_plugin.html) to provide code coverage metrics.

To generate the code coverage report execute:

```bash
./gradlew jacocoTestReport
```

The report is output to _$buildDir/reports/jacoco_.

## Dependencies

### Version Updates
This project uses [Dependabot](https://docs.github.com/en/code-security/dependabot/dependabot-version-updates/about-dependabot-version-updates) to check for version updates of project dependent libraries.

Dependabot will automatically create a pull request when it identifies there are new versions available.

### OWASP Dependency-Check
This project uses [OWASP Dependency-Check plugin](https://jeremylong.github.io/DependencyCheck/dependency-check-gradle/index.html) to check the project dependent libraries for known vulnerabilities.

To perform the checks execute:
```bash
./gradlew dependencyCheckAnalyze
```

The checks are also executed as part of the `gradle check` task.

A report is output to _$buildDir/reports/dependency-check-report.html_

## Continuous Integration
This project uses a [Java Gradle CI](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-java-with-gradle) GitHub workflow to build and test the project on any pull request or commit to main.

## Building
This project uses [Gradle](https://gradle.org/) as a build tool.

To build the project execute:

```bash
./gradlew build
```

## Running
The application can be run using either Gradle:
```bash
./gradlew bootRun
```

or with Docker:
```bash
./gradlew assemble

docker-compose build

docker-compose up
```

This will start the application on port 8080.

There is an application health endpoint at
```bash
curl http://localhost:8080/actuator/health
```
