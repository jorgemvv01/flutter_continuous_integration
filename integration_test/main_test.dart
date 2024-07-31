import 'package:flutter/material.dart';
import 'package:flutter_continuous_integration/main.dart';
import 'package:flutter_continuous_integration/widgets/character_item_wg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:video_appbar/video_appbar.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('home and second screen',(tester) async {
      await tester.pumpWidget(const MainApp());
      await tester.pumpAndSettle();

      expect(find.byType(VideoAppBar), findsOneWidget);
      expect(find.text('Flutter - CI'), findsOneWidget);
      expect(find.byIcon(Icons.person), findsOneWidget);
      expect(find.byIcon(Icons.person), findsOneWidget);
      expect(find.byType(CharacterItem), findsWidgets);

      var characterItem  = tester.widgetList<CharacterItem>(find.byType(CharacterItem));

      await tester.dragUntilVisible(
        find.byWidget(characterItem.last),
        find.byType(SingleChildScrollView),
        const Offset(0.0, -50.0)
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byWidget(characterItem.last));
      await tester.pumpAndSettle();

      expect(find.byType(VideoAppBar), findsOneWidget);
      expect(find.text('Go to home'), findsOneWidget);

      await tester.tap(find.text('Go to home'));
      await tester.pumpAndSettle();
    });
  });
}