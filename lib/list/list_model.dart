import '/flutter_flow/flutter_flow_util.dart';
import 'list_widget.dart' show ListWidget;
import 'package:flutter/material.dart';

class ListModel extends FlutterFlowModel<ListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
