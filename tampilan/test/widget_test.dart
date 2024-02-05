import 'package:flutter_test/flutter_test.dart';
import 'package:tampilan/main.dart';

void main() {
  testWidgets('Testing Splash Screen Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that Splash Screen is displayed.
    expect(find.text('Splash Screen'), findsOneWidget);
    
    // Simulate waiting for a few seconds (you may need to adjust the duration).
    await tester.pump(Duration(seconds: 3));

    // Verify that the app navigates to the Login Page.
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Testing Login Page Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Simulate waiting for a few seconds (assuming the app navigates to Login Page).
    await tester.pump(Duration(seconds: 3));

    // Verify that the Login Page is displayed.
    expect(find.text('Login Page'), findsOneWidget);
    
    // Simulate tapping on a login button (you may need to adjust the finder).
    await tester.tap(find.text('Login Button'));
    await tester.pump();

    // Verify that the app navigates to the Dashboard Page.
    expect(find.text('Dashboard'), findsOneWidget);
  });
}
