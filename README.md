# YassirModelPackage

YassirModelPackage is a comprehensive Swift Package designed to streamline the development process of the YassirMovies app. This package encapsulates everything you need for effective API communication, including endpoints definition, entities for data representation, managers for business logic, networking utilities, and services for data fetching. It's tailored to interact with the TMDB API, enabling you to quickly implement features related to movie information retrieval while also providing mock services for a seamless testing experience.

## Features

- **Endpoints**: Define clear paths to the TMDB API, ensuring that you're working with well-structured URLs for your requests.
- **Entities**: Represent data models that facilitate the decoding of JSON responses into Swift objects.
- **Managers**: Handle the core business logic of your app, interfacing between the services layer and your app's user interface.
- **Network**: A robust HTTP client for making requests to the web and handling responses.

## Components

### HTTPClient.swift

A core class responsible for executing HTTP requests. It provides a streamlined way to interact with APIs and handle responses.

### TmdbEndpoint.swift

This file contains the endpoint definitions for TMDB API calls. It's organized to offer intuitive access to various API paths, ensuring that your requests are correctly structured.

### TmdbService.swift

The service layer that directly interacts with the TMDB API. It utilizes `HTTPClient` for fetching data, focusing on transforming raw responses into usable entities.

### MockTmdbService.swift

A mock version of the TmdbService, designed for testing purposes. It allows developers to simulate API responses without actual network calls, enabling faster and more focused testing cycles.

## Usage

Integrate YassirModelPackage into your YassirMovies app to handle all API-related tasks efficiently. Utilize `TmdbService` for live data fetching and `MockTmdbService` during development and testing phases to streamline your app development workflow.

## Requirements

- iOS 16.0 or later

## Installation

YassirModelPackage can be added to your project via Swift Package Manager (SPM).

1. Open your project in Xcode.
2. Select File > Swift Packages > Add Package Dependency.
3. Enter the package repository URL: `https://github.com/PietroMessineo/YassirModelPackage`
4. Choose the version you want to integrate.
