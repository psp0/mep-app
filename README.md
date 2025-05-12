# MEP App

## Overview

mep(metaverse edu plaform) is a web application that provides an educational experience in a virtual environment.

## Prerequisites

- Java 11+
- Maven
- Docker
- Docker Compose

## Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/psp0/mep-app
    cd mep-app
    ```
2.  **Create `.env` file:** Create a `.env` file in the `mep-app` directory based on `.env.example` (you should create this file!) and fill in the required environment variables:
    ```env
    # Example .env content
    JDBC_DATABASE_URL=jdbc:mysql://mysql:3306/mepdb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Seoul&characterEncoding=UTF-8&connectionCollation=utf8mb4_unicode_ci
    JDBC_DATABASE_USERNAME=mepuser
    JDBC_DATABASE_PASSWORD=your_mysql_password # Change this!
    MYSQL_DATABASE=mepdb
    MYSQL_USER=mepuser
    MYSQL_PASSWORD=your_mysql_password # Change this!
    MYSQL_ROOT_PASSWORD=your_root_password # Change this!
    JWT_SECRET=your_super_secret_jwt_key_that_is_very_long_and_secure # Change this!
    JWT_ACCESS_TOKEN_VALIDITY_SECONDS=3600 # 1 hour
    JWT_REFRESH_TOKEN_VALIDITY_SECONDS=604800 # 7 days
    ```
3.  **Build and Run with Docker Compose:**
    ```bash
    docker-compose up --build -d
    ```

## API Endpoints

## License
