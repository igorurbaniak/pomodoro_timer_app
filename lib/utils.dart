import 'package:flutter/material.dart';

List selectableTimes = [
  '300',
  '600',
  '900',
  '1200',
  '1500',
  '1800',
  '2100',
  '2400',
  '2700',
  '3000',
  '3300',
];

Color renderColor(String currentState) {
  if (currentState == 'FOCUS') {
    return Colors.purple;
  } else {
    return Colors.green;
  }
}
