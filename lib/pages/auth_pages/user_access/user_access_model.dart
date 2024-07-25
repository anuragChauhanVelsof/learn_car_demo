import '/flutter_flow/flutter_flow_util.dart';
import 'user_access_widget.dart' show UserAccessWidget;
import 'package:flutter/material.dart';

class UserAccessModel extends FlutterFlowModel<UserAccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
