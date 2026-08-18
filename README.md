# dreamTravel

[![Codemagic build status](https://api.codemagic.io/apps/6a0d825583fad12bf23a7ee4/6a0d825583fad12bf23a7ee3/status_badge.svg)](https://codemagic.io/app/6a0d825583fad12bf23a7ee4/6a0d825583fad12bf23a7ee3/latest_build)

Travel booking platform consisting of a Flutter front-end for Android, iOS and Web combined with a Spring Boot back-end running on Microsoft Azure architecture.

## Values

- Connective
- Personal
- Inclusive

## Pages

- Explore - Users can search for trips and find flights, hotels, travel experiences and personalised trip itineraries (called Adventure Cards).
- Campfire - Social media space for sharing custom adventures, photos, videos and locations with other travellers.
- Bookings - Users can manage their upcoming and past bookings for flights and hotels.
- Diary - Users can build a personal diary with photos, stickers, text and free drawing.
- User - Users can manage their personal preferences and their overall travel account.

## Planned Features

- Offline support
- Personalised Adventure Cards can be created by a travel agency and shared as weekly recommendations through the Explore page.
- Travel diary that users can use to store photos, stickers, text and drawings for each trip. Social Cards and Adventure Cards that they publish on the Campfire page can be added to their personal travel diary here.
- Photos and videos can be added to an Adventure Card and shared amongst others through the Campfire page. User experinces are published as Social Cards (consisting of one photo) and trip itineraries that users create are published as Adventure Cards (consisting of up to six photos).
- Users can turn their Adventure Cards into bookable experiences and share them with others to book. For example, users can create a bookable experience with a minimum of three key areas, hotels and car rentals can also be added to a bookable Adventure Card that is then shared through the Campfire page.
- User can take photos directly through the app without switching to the camera app.

## Project Motivation

This project was developed as a "full-stack" improvement on the TravelHopper Android project that I initially developed at university (See: https://github.com/Tommy-2000/TravelHopper_Android) and to demonstrate my experience with web and mobile app development with Flutter as well as back-end, cloud-based API development with Spring Boot and Microsoft Azure. I am looking to make this flight and hotel booking platform more 'personalised' based on the user's own travel experiences and the experiences of others. I am looking into adding new features that best place this idea of a social media platform with travel booking features into practice. A portal for travel agencies is also planned alongside this later on (for now Strapi is a strong CMS for Flutter-based applications). If you have any other suggestions for new features that could be added to my project, create a PR with the features you recommend and share it with me on [dreamdev.tommy.2000@outlook.com](dreamdev.tommy.2000@outlook.com).

## Flutter Features

- Dio - Used for http client-based requests and response handling from the Spring Boot back-end.

- Riverpod - Used for global state management throughout the app/website.

- GoRouter - Used for route-based navigation that is compatible for both Android, iOS and web.

- Freezed - Used to generate data classes with get and set methods based on data requests made.

- GraphQL\_Flutter - Used to manage and parse GraphQL data obtained from the Spring Boot back-end.

## Spring Boot Features

- Spring Reactive Web - Used for asynchronous REST-based controllers when written in Kotlin.

- Netflix Eureka - Used for service discovery and load balancing.

- Spring Gateway - Used with the Eureka server as an entrypoint for all services.

- Spring Security - Used for securing and authenticating users on specific routes and services.

- PostgreSQL - Used as the database for both relational and vector-embedded data.

- Strapi CMS - Used for travel agencies to publish custom made trips on the Explore and Search page, manage bookings and other content on the front-end.


## Important Note Regarding The Amadeus Self-Service API

Amadeus for Developers self-service portal was decommissioned on July 17th, 2026. Enterprise APIs remain available via the Enterprise portal. Therefore, other travel API's are being tested and implemented into the back-end part of this project with Sabre, Travelport NDC and TripAdvisor as popular and capable options managed alongside my own travel APIs through a Spring Boot-based API gateway hosted on Microsoft Azure.

## Contribute

This project was on pause due to work and family commitments recently. As of April 2026, active development has just now restarted. If you have any suggestions or further improvements you would like to make to this project, please feel free to send me a PR with the changes you recommend to \[dreamdev.tommy.2000@outlook.com](dreamdev.tommy.2000@outlook.com). You are also more than welcome to make a fork of this repo if you want to make your changes there. Thanks! 😀👍


> *一緒に夢に飛び込みましょう (Let’s dive into our dreams together)*
