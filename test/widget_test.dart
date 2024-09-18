import 'package:flutter_test/flutter_test.dart';
import 'package:dog_ceo_take_home/src/core/di/di_initializer.dart';
import 'package:dog_ceo_take_home/app.dart'; // Import DogCeoApp
import 'package:dog_ceo_take_home/src/presentation/breeds_list/breeds_list_page.dart'; // Import a page to test
import 'package:dog_ceo_take_home/src/presentation/breed_details/breed_details_page.dart'; // Import BreedDetailsPage for navigation test

void main() {
  setUpAll(() {
    init(); // Initialize GetIt and register all dependencies
  });

  testWidgets('BreedsListPage renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const DogCeoApp());

    // Wait for all the frames to render completely
    await tester.pumpAndSettle();

    // Check if the BreedsListPage is displayed
    expect(find.byType(BreedsListPage), findsOneWidget);
  });

  testWidgets('BreedDetailsPage navigation works', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const DogCeoApp());

    // Simulate navigating to the BreedDetailsPage via a navigator push
    await tester
        .tap(find.text('labrador')); // Simulate tapping on the Labrador breed
    await tester.pumpAndSettle(); // Wait for the navigation to complete

    // Check if BreedDetailsPage is displayed after navigation
    expect(find.byType(BreedDetailsPage), findsOneWidget);
    expect(find.text('LABRADOR'), findsOneWidget); // Verify the page content
  });
}
