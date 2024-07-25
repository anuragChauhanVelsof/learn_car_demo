// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool> checkAuth() async {
  // Get a reference to your Supabase client
  final supabase = Supabase.instance.client;

  // Retrieve the current session
  final Session? session = supabase.auth.currentSession;

  if (session != null) {
    // Check if the user's email is not empty
    final userEmail = session.user?.email ?? '';
    if (userEmail.isNotEmpty) {
      print('Signed In!');
      return true;
    }
  }

  print('No sign in or email is empty');
  return false;
}
