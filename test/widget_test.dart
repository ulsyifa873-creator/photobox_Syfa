import 'package:flutter_test/flutter_test.dart';
import 'package:photobox_syifa/main.dart';

void main() {
  testWidgets('PHOTOBOX app test', (WidgetTester tester) async {
    await tester.pumpWidget(const PhotoBoxApp());

    expect(find.text('PHOTOBOX ✷'), findsOneWidget);
    expect(find.text('GOOD TIMES.\nGREAT FRAMES.'), findsOneWidget);
  });
}