import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quizoption_model.dart';
export 'quizoption_model.dart';

class QuizoptionWidget extends StatefulWidget {
  const QuizoptionWidget({
    Key? key,
    required this.questionNum,
    required this.questionName,
    required this.istrue,
  }) : super(key: key);

  final String? questionNum;
  final String? questionName;
  final bool? istrue;

  @override
  _QuizoptionWidgetState createState() => _QuizoptionWidgetState();
}

class _QuizoptionWidgetState extends State<QuizoptionWidget> {
  late QuizoptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizoptionModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (widget.istrue!) {
            if (_model.isAnswered != null) {
              setState(() {
                _model.isAnswered = null;
              });
              setState(() {
                FFAppState().cuestionariocompleto =
                    FFAppState().cuestionariocompleto + 1;
              });
              setState(() {
                FFAppState().puntaje = -1;
              });
            } else {
              setState(() {
                _model.isAnswered = true;
              });
              setState(() {
                FFAppState().cuestionariocompleto =
                    FFAppState().cuestionariocompleto + 1;
              });
              setState(() {
                FFAppState().puntaje = 1;
              });
            }
          } else {
            if (_model.isAnswered != null) {
              setState(() {
                _model.isAnswered = null;
              });
              setState(() {
                FFAppState().cuestionariocompleto =
                    FFAppState().cuestionariocompleto + 1;
              });
            } else {
              setState(() {
                _model.isAnswered = false;
              });
              setState(() {
                FFAppState().cuestionariocompleto = 1;
              });
            }
          }
        },
        child: Container(
          width: 350.0,
          height: 76.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return Color(0x74249689);
                } else if (_model.isAnswered == false) {
                  return Color(0x6EFF5963);
                } else {
                  return Colors.transparent;
                }
              }(),
              Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: valueOrDefault<Color>(
                () {
                  if (_model.isAnswered == true) {
                    return Color(0xFF249689);
                  } else if (_model.isAnswered == false) {
                    return Color(0xFFFF5963);
                  } else {
                    return Colors.transparent;
                  }
                }(),
                Colors.black,
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.isAnswered == true) {
                            return Color(0x74249689);
                          } else if (_model.isAnswered == false) {
                            return Color(0x6EFF5963);
                          } else {
                            return Colors.transparent;
                          }
                        }(),
                        Colors.transparent,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      widget.questionNum!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Text(
                  widget.questionName!,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
