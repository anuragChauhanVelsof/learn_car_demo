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

Future<bool> resendOtp(String phone) async {
  // Add your function code here!
  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;
  try {
    await supabase.auth.resend(
      type: OtpType.sms,
      phone: phone,
    );
    return true;
  } catch (error) {
    return false;
  }
}
