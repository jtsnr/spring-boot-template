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

## Building
This project uses [Gradle](https://gradle.org/) as a build tool.

To build the project execute:

```bash
./gradlew build
```
