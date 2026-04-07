# Welcome Mate

Welcome Mate is a comprehensive application designed to help users integrate into new communities or environments. It provides essential features to ensure a smooth onboarding and living experience.

## Features

- **Chat**: Real-time communication and messaging.
- **Checklists**: Task management to keep track of important onboarding or daily tasks.
- **Community**: Forums or social features to connect with others.
- **Emergency**: Quick access to emergency contacts and information.
- **Guides**: Helpful tutorials and resources for getting around.
- **Notifications**: Stay updated with important alerts and messages.
- **Places**: Discover important locations and points of interest.
- **Users**: User authentication and profile management.

## Tech Stack

- **Backend**: Django (Python) 
- **Frontend**: Flutter (Dart)

## Setup and Running

### Backend (Django)
1. Navigate to `backend_django`
2. Create a virtual environment: `python -m venv venv`
3. Activate the virtual environment
4. Install dependencies: `pip install -r requirements.txt`
5. Apply migrations: `python manage.py migrate`
6. Run the server: `python manage.py runserver`

### Frontend (Flutter)
1. Navigate to `frontend_flutter`
2. Fetch dependencies: `flutter pub get`
3. Run the app: `flutter run`

## Folder Structure

```
welcomemate/
├── backend_django/
│   ├── welcomemate_backend/ # Core Django settings & configurations
│   ├── users/               # Authentication and Profile apps 
│   ├── community/           # Community and Forum apps
│   ├── chat/                # Real-time messaging 
│   ├── guides/              # Guides and resources
│   ├── emergency/           # Emergency info
│   ├── places/              # Location and interest points
│   ├── checklists/          # Task management
│   ├── notifications/       # Push and in-app alerts
│   └── requirements.txt     # Python dependencies
└── frontend_flutter/
    ├── lib/
    │   ├── data/            # API clients, repositories, and local storage models
    │   ├── di/              # Dependency Injection logic (get_it)
    │   ├── domain/          # Entities and Use-cases (Clean Architecture)
    │   └── presentation/    # UI logic (Riverpod state, Screens, Widgets, Theme)
    └── pubspec.yaml         # Flutter dependencies
```

## Architecture & Plumbing

### Backend (Django)
The backend is structured around modular Django applications. Each feature (like `chat`, `community`, `users`) acts as a separate application wired into the `welcomemate_backend` root project.
- **REST APIs**: `djangorestframework` powers all JSON REST endpoints. 
- **Authentication**: JWT-based authentication via `djangorestframework-simplejwt`.
- **Database**: Configured to use standard DB (SQLite by default, psycopg2 for PostgreSQL in production), managed by standard Django ORM.
- **AI / Integrations**: Integrates with Google Generative AI APIs (`google-generativeai`).

### Frontend (Flutter)
The Flutter application follows a robust **Clean Architecture** approach with structured layers:
- **Presentation Layer**: Built with Material Design layouts. Uses `flutter_riverpod` for responsive and scalable state management. Includes features like Lottie animations (`lottie`), toast notifications (`toastification`), and specialized builders (`flutter_form_builder`). Freezed is heavily utilized for immutable UI states.
- **Domain Layer**: Houses pure business logic and use cases without dependency on external frameworks.
- **Data Layer**: Responsible for asynchronous HTTP calls using `dio` and local caching using `shared_preferences`.
- **Dependency Injection**: Utilizes `get_it` for decoupling and injecting repositories, services, and state notifiers.
