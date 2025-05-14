import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: Color(0xFF1B5B3A), // Màu chủ đạo
  brightness: Brightness.light,
);
void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: colorScheme.onPrimaryContainer,
          foregroundColor: Colors.white,
        ),
        cardTheme: CardTheme().copyWith(
          color: colorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: colorScheme.onErrorContainer,
              ),
            ),
      ),
    ),
  );
}
