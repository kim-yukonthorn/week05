import 'dart:convert';
import 'package:flutter/services.dart';

Future<void> loadData() async {
  final String response = await rootBundle.loadString('assets/data.json');
  final data = json.decode(response); // Decode JSON data
  print(data); // You can process this data further as needed
}
