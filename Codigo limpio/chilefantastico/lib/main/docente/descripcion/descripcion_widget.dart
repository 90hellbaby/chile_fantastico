import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'descripcion_model.dart';
export 'descripcion_model.dart';

class DescripcionWidget extends StatefulWidget {
  const DescripcionWidget({Key? key}) : super(key: key);

  @override
  _DescripcionWidgetState createState() => _DescripcionWidgetState();
}

class _DescripcionWidgetState extends State<DescripcionWidget> {
  late DescripcionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescripcionModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Bibliotecadocente');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, 1.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 10.0),
            child: StreamBuilder<List<CuentosRecord>>(
              stream: queryCuentosRecord(
                singleRecord: true,
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
                List<CuentosRecord> containerCuentosRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final containerCuentosRecord =
                    containerCuentosRecordList.isNotEmpty
                        ? containerCuentosRecordList.first
                        : null;
                return Container(
                  width: 354.0,
                  height: 221.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      containerCuentosRecord!.descripcion,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.00, 0.00),
          child: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).accent1,
            icon: Icon(
              Icons.close,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
