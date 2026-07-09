import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flux_player/app.dart';

void main() {
  testWidgets('app builds without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: FluxApp()));
    await tester.pump();

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
