import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'test_questions_widget.dart' show TestQuestionsWidget;
import 'package:flutter/material.dart';

class TestQuestionsModel extends FlutterFlowModel<TestQuestionsWidget> {
  ///  Local state fields for this page.

  int index = 0;

  List<String> selecedtAsnwers = [''];
  void addToSelecedtAsnwers(String item) => selecedtAsnwers.add(item);
  void removeFromSelecedtAsnwers(String item) => selecedtAsnwers.remove(item);
  void removeAtIndexFromSelecedtAsnwers(int index) =>
      selecedtAsnwers.removeAt(index);
  void insertAtIndexInSelecedtAsnwers(int index, String item) =>
      selecedtAsnwers.insert(index, item);
  void updateSelecedtAsnwersAtIndex(int index, Function(String) updateFn) =>
      selecedtAsnwers[index] = updateFn(selecedtAsnwers[index]);

  List<String> correctAnswers = [''];
  void addToCorrectAnswers(String item) => correctAnswers.add(item);
  void removeFromCorrectAnswers(String item) => correctAnswers.remove(item);
  void removeAtIndexFromCorrectAnswers(int index) =>
      correctAnswers.removeAt(index);
  void insertAtIndexInCorrectAnswers(int index, String item) =>
      correctAnswers.insert(index, item);
  void updateCorrectAnswersAtIndex(int index, Function(String) updateFn) =>
      correctAnswers[index] = updateFn(correctAnswers[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 1500000;
  int timerMilliseconds = 1500000;
  String timerValue = StopWatchTimer.getDisplayTime(
    1500000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    timerController.dispose();
  }
}
