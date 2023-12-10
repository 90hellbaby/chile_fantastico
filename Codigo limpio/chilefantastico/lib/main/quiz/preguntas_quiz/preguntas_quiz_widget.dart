import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'preguntas_quiz_model.dart';
export 'preguntas_quiz_model.dart';

class PreguntasQuizWidget extends StatefulWidget {
  const PreguntasQuizWidget({
    Key? key,
    this.quizset,
  }) : super(key: key);

  final DocumentReference? quizset;

  @override
  _PreguntasQuizWidgetState createState() => _PreguntasQuizWidgetState();
}

class _PreguntasQuizWidgetState extends State<PreguntasQuizWidget> {
  late PreguntasQuizModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreguntasQuizModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 340.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.00, 0.00),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  icon: Icon(
                                    Icons.arrow_back_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('Sitehomedocente');
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Crear un Quiz',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 30.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Pregunta',
                                  hintText:
                                      'Ingrese la primera pregunta del quiz',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 24.0, 20.0, 24.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                minLines: 1,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                            Container(
                              width: 344.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x0014181B),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 236.0,
                                    height: 87.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Opción A',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 20.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: null,
                                        minLines: 1,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.standard,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.padded,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue1 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue1 =
                                              newValue!);
                                          if (newValue!) {
                                            setState(() {
                                              _model.opcionA = true;
                                            });
                                          } else {
                                            setState(() {
                                              _model.opcionA = false;
                                            });
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 344.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x0014181B),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 236.0,
                                    height: 87.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Opción B',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 20.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: null,
                                        minLines: 1,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.standard,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.padded,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue2 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue2 =
                                              newValue!);
                                          if (newValue!) {
                                            setState(() {
                                              _model.opcionB = true;
                                            });
                                          } else {
                                            setState(() {
                                              _model.opcionB = false;
                                            });
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 344.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x0014181B),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 236.0,
                                    height: 87.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController4,
                                        focusNode: _model.textFieldFocusNode4,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Opción C',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 20.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.standard,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.padded,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue3 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue3 =
                                              newValue!);
                                          if (newValue!) {
                                            setState(() {
                                              _model.opcionC = true;
                                            });
                                          } else {
                                            setState(() {
                                              _model.opcionC = false;
                                            });
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 344.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0x0014181B),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 236.0,
                                    height: 87.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 10.0, 20.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController5,
                                        focusNode: _model.textFieldFocusNode5,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Opción D',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 24.0, 20.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x0014181B),
                                    ),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.standard,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.padded,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue4 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue4 =
                                              newValue!);
                                          if (newValue!) {
                                            setState(() {
                                              _model.opcionD = true;
                                            });
                                          } else {
                                            setState(() {
                                              _model.opcionD = false;
                                            });
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var quizRecordReference = QuizRecord.collection.doc();
                      await quizRecordReference.set(createQuizRecordData(
                        id: 1,
                        pregunta: _model.textController1.text,
                        set: widget.quizset,
                      ));
                      _model.quizCreateResponse =
                          QuizRecord.getDocumentFromData(
                              createQuizRecordData(
                                id: 1,
                                pregunta: _model.textController1.text,
                                set: widget.quizset,
                              ),
                              quizRecordReference);

                      await PreguntaARecord.createDoc(
                              _model.quizCreateResponse!.reference)
                          .set(createPreguntaARecordData(
                        pregunta: _model.textController2.text,
                        isTrue: _model.opcionA,
                      ));

                      await PreguntaBRecord.createDoc(
                              _model.quizCreateResponse!.reference)
                          .set(createPreguntaBRecordData(
                        pregunta: _model.textController3.text,
                        isTrue: _model.opcionB,
                      ));

                      await PreguntaCRecord.createDoc(
                              _model.quizCreateResponse!.reference)
                          .set(createPreguntaCRecordData(
                        pregunta: _model.textController4.text,
                        isTrue: _model.opcionC,
                      ));

                      await PreguntaDRecord.createDoc(
                              _model.quizCreateResponse!.reference)
                          .set(createPreguntaDRecordData(
                        pregunta: _model.textController5.text,
                        isTrue: _model.opcionD,
                      ));

                      await widget.quizset!.update({
                        ...mapToFirestore(
                          {
                            'totalpreguntas': FieldValue.increment(1),
                          },
                        ),
                      });
                      setState(() {
                        _model.textController2?.clear();
                        _model.textController3?.clear();
                        _model.textController4?.clear();
                        _model.textController5?.clear();
                      });
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Se ha ingresado con exito',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );

                      setState(() {});
                    },
                    text: 'Añadir pregunta',
                    options: FFButtonOptions(
                      width: 150.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
