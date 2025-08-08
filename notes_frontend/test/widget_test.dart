import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('App builds and shows All Notes title', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.text('All Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('FAB opens note editor screen', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();
    expect(find.textContaining('Note'), findsOneWidget); // Note create screen title
  });
}
