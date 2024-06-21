import 'package:flutter_test/flutter_test.dart';
import 'package:animesetlist/main.dart'; // Pastikan impor ini benar jika MyApp ada di main.dart

void main() {
  testWidgets('Example Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester
        .pumpWidget(AnimeSetListApp()); // Ganti dengan MyApp() yang sesuai

    // Example test logic
    // Contoh pengujian widget
    expect(find.text('Hello, World!'),
        findsOneWidget); // Ganti dengan widget atau teks yang ada dalam MyApp

    // Optional: Add await tester.pump(Duration.zero); for handling async
  });
}
