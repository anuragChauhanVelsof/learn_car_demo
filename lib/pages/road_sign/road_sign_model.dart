import '/flutter_flow/flutter_flow_util.dart';
import 'road_sign_widget.dart' show RoadSignWidget;
import 'package:flutter/material.dart';

class RoadSignModel extends FlutterFlowModel<RoadSignWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
