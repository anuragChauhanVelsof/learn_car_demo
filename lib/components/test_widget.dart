import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'test_model.dart';
export 'test_model.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
  });

  final List<String>? parameter1;
  final List<int>? parameter2;
  final int? parameter3;

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late TestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
        child: FutureBuilder<List<RtoRow>>(
          future: RtoTable().queryRows(
            queryFn: (q) => q,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<RtoRow> rtoDropdownRtoRowList = snapshot.data!;

            return FlutterFlowDropDown<int>(
              controller: _model.rtoDropdownValueController ??=
                  FormFieldController<int>(
                _model.rtoDropdownValue ??= rtoDropdownRtoRowList.first.id,
              ),
              options: List<int>.from(
                  rtoDropdownRtoRowList.map((e) => e.id).toList()),
              optionLabels: rtoDropdownRtoRowList.map((e) => e.rto).toList(),
              onChanged: (val) => setState(() => _model.rtoDropdownValue = val),
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                  ),
              hintText: FFLocalizations.of(context).getText(
                'qwb84ece' /* Select RTO... */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: false,
              isMultiSelect: false,
              labelText: FFLocalizations.of(context).getText(
                '58uag5bt' /* RTO */,
              ),
              labelTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Roboto',
                    letterSpacing: 0.0,
                  ),
            );
          },
        ),
      ),
    );
  }
}
