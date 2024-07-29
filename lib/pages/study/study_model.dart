import '/flutter_flow/flutter_flow_util.dart';
import 'study_widget.dart' show StudyWidget;
import 'package:flutter/material.dart';

class StudyModel extends FlutterFlowModel<StudyWidget> {
  ///  Local state fields for this page.

  String? selectedVideo;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
