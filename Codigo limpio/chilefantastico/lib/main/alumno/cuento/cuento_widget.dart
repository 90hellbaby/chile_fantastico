import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cuento_model.dart';
export 'cuento_model.dart';

class CuentoWidget extends StatefulWidget {
  const CuentoWidget({
    Key? key,
    required this.idcuento,
  }) : super(key: key);

  final DocumentReference? idcuento;

  @override
  _CuentoWidgetState createState() => _CuentoWidgetState();
}

class _CuentoWidgetState extends State<CuentoWidget> {
  late CuentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CuentoModel());

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

    return StreamBuilder<CuentosRecord>(
      stream: CuentosRecord.getDocument(widget.idcuento!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final cuentoCuentosRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Container(
              width: 300.0,
              child: Drawer(
                elevation: 16.0,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.20, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              17.0, 40.0, 0.0, 30.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (scaffoldKey.currentState!.isDrawerOpen ||
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
                                Navigator.pop(context);
                              }
                            },
                            child: Icon(
                              Icons.chevron_left_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 35.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.book,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 32.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Chilefantastico',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.dashboard_rounded,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Progreso',
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bookmark_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Cuentos',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.checklist_rtl,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Actividades',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Mi perfil',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.help,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Ayuda',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 300.0, 0.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth(
                                      'IniciarSesion', context.mounted);
                                },
                                text: 'Cerrar sesión',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 30.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.menu_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                ],
              ),
              title: Align(
                alignment: AlignmentDirectional(-0.30, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Sitehomealumno');
                    },
                    child: Text(
                      'Volver al inicio',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                fontSize: 18.0,
                              ),
                    ),
                  ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 396.0,
                                  height: 250.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      cuentoCuentosRecord.portada,
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: FlutterFlowPdfViewer(
                                    networkPath: cuentoCuentosRecord.link,
                                    width: 800.0,
                                    height: 400.0,
                                    horizontalScroll: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          StreamBuilder<List<QuizsetRecord>>(
                            stream: queryQuizsetRecord(
                              queryBuilder: (quizsetRecord) =>
                                  quizsetRecord.where(
                                'nombre',
                                isEqualTo: cuentoCuentosRecord.titulo,
                              ),
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
                              List<QuizsetRecord> listViewQuizsetRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final listViewQuizsetRecord =
                                  listViewQuizsetRecordList.isNotEmpty
                                      ? listViewQuizsetRecordList.first
                                      : null;
                              return ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  StreamBuilder<QuizsetRecord>(
                                    stream: QuizsetRecord.getDocument(
                                        listViewQuizsetRecord!.reference),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final buttonQuizsetRecord =
                                          snapshot.data!;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'Quiz',
                                            queryParameters: {
                                              'quizset': serializeParam(
                                                buttonQuizsetRecord.reference,
                                                ParamType.DocumentReference,
                                              ),
                                              'quizDuration': serializeParam(
                                                60000,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'Ir al quiz',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
