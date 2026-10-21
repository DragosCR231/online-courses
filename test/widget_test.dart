import 'package:flutter_test/flutter_test.dart';
import 'package:online_courses/main.dart';

void main() {
  testWidgets('App starts correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const OnlineCoursesApp());
    expect(find.text('Hi, Kristin'), findsOneWidget);
  });
}
