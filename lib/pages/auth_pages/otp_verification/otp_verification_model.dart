import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_verification_widget.dart' show OtpVerificationWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpVerificationModel extends FlutterFlowModel<OtpVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Otp widget.
  TextEditingController? otp;
  String? Function(BuildContext, String?)? otpValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - resendOtp] action in Text widget.
  bool? result;
  // Stores action output result for [Custom Action - confirmOtp] action in Verfiy widget.
  bool? success;
  // Stores action output result for [Custom Action - checkAuth] action in Verfiy widget.
  bool? isSigned;
  // Stores action output result for [Backend Call - Query Rows] action in Verfiy widget.
  List<ProfileRow>? profile;

  @override
  void initState(BuildContext context) {
    otp = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    otp?.dispose();
    timerController.dispose();
  }
}
