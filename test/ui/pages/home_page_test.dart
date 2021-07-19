// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iamrich/ui/pages/home_page.dart';

void main() {
  _loadPage(WidgetTester tester) {
    return tester.pumpWidget(MaterialApp(home: HomePage()));
  }

  testWidgets('Should find title', (WidgetTester tester) async {
    await _loadPage(tester);
    expect(find.text('I Am Rich'), findsOneWidget);
  });
  testWidgets('Should find diamond image', (WidgetTester tester) async {
    await _loadPage(tester);
    expect(find.byType(Image), findsOneWidget);

    final Image widget = find.byType(Image).evaluate().single.widget as Image;
    final AssetImage image = widget.image as AssetImage;

    expect(
      image.assetName,
      "lib/ui/assets/images/diamond.png",
      reason: 'Wrong image is call.',
    );
  });
}
