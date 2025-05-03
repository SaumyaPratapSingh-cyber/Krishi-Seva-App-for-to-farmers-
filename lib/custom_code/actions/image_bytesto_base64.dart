// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String> imageBytestoBase64(FFUploadedFile uploadedFile) async {
  // Add your function code here!
  if (uploadedFile.bytes == null) {
    throw Exception('No file bytes found.');
  }
  return base64Encode(uploadedFile.bytes!);
}
