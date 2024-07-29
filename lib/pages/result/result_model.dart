import '/flutter_flow/flutter_flow_util.dart';
import 'result_widget.dart' show ResultWidget;
import 'package:flutter/material.dart';

class ResultModel extends FlutterFlowModel<ResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
