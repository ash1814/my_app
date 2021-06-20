import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/main.dart';

import '';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('login checking Submit button', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    var button = find.text("Submit");
    expect(button, findsOneWidget);


  });

  testWidgets('login checking user field', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    var textFormfield = find.textContaining("Enter a number");
    expect(textFormfield, findsOneWidget);

});
  // testWidgets('login checking password field', (WidgetTester tester) async {
  //   await tester.pumpWidget(MyApp());
  //
  //     var pass = find.textContaining("Enter your password");
  //     expect(pass, findsOneWidget);
  //
  //
  //   });


}