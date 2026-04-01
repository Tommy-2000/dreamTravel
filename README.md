# dreamTravel

Travel booking application consisting of a Flutter front-end for Android, iOS and Web combined with a Node.JS back-end running on Microsoft Azure architecture.

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

This project was developed as a "full-stack" improvement on the TravelHopper Android project that I initially developed at university and to demonstrate my experience with cross-platform mobile application development with Flutter as well as back-end, cloud-based API development with Node.JS and Microsoft Azure. I am looking to make this flight and hotel booking platform more 'personalised' based on the user's own travel experiences and I am looking into adding new features that best place this idea into practice. If you have any other suggestions for new features that could be added to my project, create a PR with the features you recommend and share it with me on [dreamdev.tommy.2000@outlook.com](dreamdev.tommy.2000@outlook.com).


## Important Note Regarding The Amadeus Self-Service API

Amadeus for Developers self-service portal will be decommissioned on July 17th, 2026. Enterprise APIs remain available via the Enterprise portal. Therefore, other travel API's are being tested and implemented into the back-end side of this project with Sabre, Travelport NDC and TripAdvisor as popular and capable options.

A TypeScript-based fork of the Amadeus Node SDK was used to perform CRUD-based calls through an Azure Function for Amadeus before being sent to the Flutter client following a BFF (Back-end For Front-end) design pattern. See [amadeus-ts by darseen](https://github.com/darseen/amadeus-ts).

## Contribute

This project was on pause due to work and family commitments recently. As of March, active development has just now restarted. If you have any suggestions or further improvements you would like to make to this project, please feel free to send me a PR with the changes you recommend to [dreamdev.tommy.2000@outlook.com](dreamdev.tommy.2000@outlook.com). You are also more than welcome to make a fork of this repo if you want to make your changes there. Thanks! 😀👍


> *一緒に夢に飛び込みましょう (Let’s dive into our dreams together)*
