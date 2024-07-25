import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'otp_verification_model.dart';
export 'otp_verification_model.dart';

class OtpVerificationWidget extends StatefulWidget {
  const OtpVerificationWidget({
    super.key,
    required this.number,
  });

  final String? number;

  @override
  State<OtpVerificationWidget> createState() => _OtpVerificationWidgetState();
}

class _OtpVerificationWidgetState extends State<OtpVerificationWidget> {
  late OtpVerificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpVerificationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 530.0,
              ),
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 40.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset(
                                'assets/images/Vector.png',
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'j645zux2' /* Verification */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 20.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'kndxzbw3' /* Verification Code */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'We will send you the code verification to you mobile number ${widget.number}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 45.0, 16.0, 0.0),
                          child: PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 6,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            enableActiveFill: true,
                            autoFocus: true,
                            enablePinAutofill: true,
                            errorTextSpace: 16.0,
                            showCursor: true,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            obscureText: false,
                            hintCharacter: '-',
                            keyboardType: TextInputType.number,
                            pinTheme: PinTheme(
                              fieldHeight: 40.0,
                              fieldWidth: 40.0,
                              borderWidth: 2.0,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              ),
                              shape: PinCodeFieldShape.box,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              inactiveColor:
                                  FlutterFlowTheme.of(context).accent1,
                              selectedColor:
                                  FlutterFlowTheme.of(context).primary,
                              activeFillColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveFillColor:
                                  FlutterFlowTheme.of(context).accent1,
                              selectedFillColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                            controller: _model.otp,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: _model.otpValidator.asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowTimer(
                                initialTime: _model.timerInitialTimeMs,
                                getDisplayTime: (value) =>
                                    StopWatchTimer.getDisplayTime(
                                  value,
                                  hours: false,
                                  milliSecond: false,
                                ),
                                controller: _model.timerController,
                                updateStateInterval:
                                    const Duration(milliseconds: 1000),
                                onChanged: (value, displayTime, shouldUpdate) {
                                  _model.timerMilliseconds = value;
                                  _model.timerValue = displayTime;
                                  if (shouldUpdate) setState(() {});
                                },
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var shouldSetState = false;
                                  if (_model.timerMilliseconds == 0) {
                                    _model.result = await actions.resendOtp(
                                      widget.number!,
                                    );
                                    shouldSetState = true;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Pleae wait...'),
                                          content: Text(
                                              'Wait for ${_model.timerValue} s'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_model.result!) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Sent'),
                                          content: const Text(
                                              'Please enter the otp sent to yuor phone.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Error'),
                                          content:
                                              const Text('Something went worng!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  if (shouldSetState) setState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3irdcb5i' /* Resend OTP */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                30.0, 50.0, 30.0, 50.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var shouldSetState = false;
                                _model.success = await actions.confirmOtp(
                                  _model.otp!.text,
                                  widget.number!,
                                );
                                shouldSetState = true;
                                if (_model.success!) {
                                  await Future.delayed(
                                      const Duration(milliseconds: 1500));
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Error'),
                                        content: const Text(
                                            'Please enter the correct OTP'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                _model.isSigned = await actions.checkAuth();
                                shouldSetState = true;
                                _model.profile = await ProfileTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'userId',
                                    currentUserUid,
                                  ),
                                );
                                shouldSetState = true;
                                if (_model.profile != null &&
                                    (_model.profile)!.isNotEmpty) {
                                  context.goNamed('Home');
                                } else {
                                  context.goNamed('ProfileDetails');
                                }

                                if (shouldSetState) setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'iiw6lil6' /* Verify */,
                              ),
                              options: FFButtonOptions(
                                width: 400.0,
                                height: 41.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
