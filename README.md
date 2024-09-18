# Dog CEO Flutter Take-Home Project

This project is a Flutter app that interacts with the **Dog CEO API** to fetch and display a list of dog breeds, as well as detailed information (including images) for each breed. It implements clean architecture principles and state management using BLoC.

<img src="https://github.com/user-attachments/assets/e152900b-2f44-422f-8ef5-171573c2e491" alt="Simulator Screenshot" width="400"/>


## Project Setup

### Prerequisites

- Flutter SDK (v3.5.3 or later)
- Dart SDK (v3.5.3 or later)
- Android Studio or Xcode (for running on Android/iOS emulators)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/dog-ceo-take-home.git
   cd dog-ceo-take-home
2. Install dependencies:
   ```bash
   flutter pub get

3. Generate necessary files:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
4. Run the app
   ```bash
   flutter run

## APP Structure

The project follows clean architecture principles with the following structure:

Core: Contains dependency injection, constants, and utility functions.
Data: Manages API calls and data models using Dio and Freezed.
Domain: Contains business logic and use cases such as GetBreedList and GetBreedDetails.
Presentation: Includes UI components (pages, widgets) and state management using BLoC.

### Key Features
Breeds List Page: Fetches and displays a scrollable list of dog breeds.
Breed Details Page: Displays a detailed view of a selected breed, including a random image.
Navigation: Smooth navigation between pages, including back functionality.

### API Endpoints
Breeds List:
https://dog.ceo/api/breeds/list/all

Breed Details:
https://dog.ceo/api/breed/{breed-name}/images/random

### Custom Theming
The app includes a custom splash screen and consistent theming using Google Fonts and Flutter Native Splash.

### Testing
#### Manual Testing
The app has been manually tested to verify:

The dog breeds list is fetched correctly and displayed.
Navigation to breed details works as expected.
Error handling is in place for network failures.

#### Automated Tests
Basic widget tests are included to ensure UI rendering and navigation work correctly.

To run the tests, use:
```bash 
flutter test
```

### Known Issues/Limitations
Error Handling: Error handling is implemented but could be extended with advanced retry mechanisms.
Testing: Unit and integration test coverage can be improved, particularly for business logic (BLoC testing).

### Future Improvements
More Unit Tests: Enhance test coverage by adding unit and integration tests for the BLoCs and data repositories.
Additional Breed Info: Extend the breed details page to include more information beyond a single image.

### Conclusion
This Flutter app demonstrates the integration of the Dog CEO API using clean architecture principles, state management via BLoC, and dependency injection with GetIt. It provides a functional and user-friendly interface with smooth navigation and custom theming.


