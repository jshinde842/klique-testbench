# Klique Testbench

A testbench application for Klique using Spring Boot and Docker.

## Prerequisites

- Java 17
- Maven
- Docker

## Setup Instructions

### 1. Clone the Repository

Clone the repository to your local machine:

```sh
git clone https://github.com/your-username/klique-testbench.git
cd klique-testbench
```

### 2. Configure and Run PostgreSQL Container

```sh
docker run --name postgres-container -e POSTGRES_PASSWORD=admin -p 5432:5432 -d postgres
```

Create the `klique` database

```sh
docker exec -it postgres-container psql -U postgres -c "CREATE DATABASE klique;"
```

### 3. Build and Run the Application

```sh
mvn clean install
mvn spring-boot:run
```

### 4. Running Tests

```sh
mvn clean test
```
### Project Structure
```
src
└── main
    ├── java
    │   └── com
    │       └── klique
    │           └── testbench
    │               ├── TestbenchApplication.java
    │               ├── model
    │               │   └── User.java
    │               ├── service
    │               │   └── UserService.java
    │               ├── controller
    │               │   └── UserController.java
    │               └── repository
    │                   └── UserRepository.java
    └── resources
        └── application.properties
```
### Main Components

TestbenchApplication: The main entry point of the Spring Boot application.

User: The entity class representing the user data model.

UserService: The service class containing business logic for user operations.

UserController: The controller class handling HTTP requests related to users.

UserRepository: The repository interface for performing CRUD operations on the user entity.

TestbenchApplicationTests: The test class for verifying application context loading.
