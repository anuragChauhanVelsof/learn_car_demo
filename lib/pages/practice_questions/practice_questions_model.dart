import '/flutter_flow/flutter_flow_util.dart';
import 'practice_questions_widget.dart' show PracticeQuestionsWidget;
import 'package:flutter/material.dart';

class PracticeQuestionsModel extends FlutterFlowModel<PracticeQuestionsWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
