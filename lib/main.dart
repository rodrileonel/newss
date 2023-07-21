import 'package:flutter/material.dart';
import 'package:superapp/app/app.dart';
import 'package:superapp/core/di/injector.dart';

Future<void> main() async {
  await configure(stg.name);
  runApp(const NewsApp());
}
