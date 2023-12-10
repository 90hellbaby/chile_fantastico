import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quizset_model.dart';
export 'quizset_model.dart';

class QuizsetWidget extends StatefulWidget {
  const QuizsetWidget({
    Key? key,
    required this.nombre,
    required this.descripcion,
    required this.duracion,
    required this.totalpreguntas,
  }) : super(key: key);

  final String? nombre;
  final String? descripcion;
  final double? duracion;
  final int? totalpreguntas;

  @override
  _QuizsetWidgetState createState() => _QuizsetWidgetState();
}

class _QuizsetWidgetState extends State<QuizsetWidget> {
  late QuizsetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizsetModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
      child: Container(
        width: 515.0,
        height: 123.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: AutoSizeText(
                          widget.nombre!,
                          textAlign: TextAlign.center,
                          maxLines: 10,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14.0,
                                  ),
                          minFontSize: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 6.0, 40.0, 0.0),
                      child: Text(
                        widget.descripcion!,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.quora_sharp,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.totalpreguntas?.toString(),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' Preguntas',
                                    style: TextStyle(
                                      fontSize: 9.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 9.0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.timer_sharp,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 19.0,
                            ),
                            Flexible(
                              child: RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget.duracion?.toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ' Minutos',
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 9.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: 72.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                      color: Color(0x814B39EF),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        'https://i.ibb.co/KbJWn8X/transparent-cup-icon-trophy-icon-learning-icon-5da70216858c99-883426791571226134547.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
