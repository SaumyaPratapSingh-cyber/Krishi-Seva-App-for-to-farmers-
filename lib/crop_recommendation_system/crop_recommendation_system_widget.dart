import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'crop_recommendation_system_model.dart';
export 'crop_recommendation_system_model.dart';

class CropRecommendationSystemWidget extends StatefulWidget {
  const CropRecommendationSystemWidget({super.key});

  static String routeName = 'CropRecommendationSystem';
  static String routePath = '/cropRecommendationSystem';

  @override
  State<CropRecommendationSystemWidget> createState() =>
      _CropRecommendationSystemWidgetState();
}

class _CropRecommendationSystemWidgetState
    extends State<CropRecommendationSystemWidget> {
  late CropRecommendationSystemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CropRecommendationSystemModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF44E976),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.09, -0.99),
            child: Text(
              FFLocalizations.of(context).getText(
                'dnmhbp7u' /* Crop  Recommendation  System */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    font: GoogleFonts.playfairDisplay(
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
            ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(),
          ),
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 415.0,
                height: 718.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.11, -0.63),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController1 ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'avzkxt8d' /* Recommend me Best Crop to Prod... */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue1 = val),
                                  width: 200.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.airbnb,
                                    size: 24.0,
                                  ),
                                  elevation: 0.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.06, 0.15),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController2 ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      '0ocntw37' /* 10-15 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'bglc2yal' /* 15-20 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'x26z5785' /* 20-25 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'xw21c7ia' /* 25-30 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '5ve3pzqa' /* 30-35 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '8rbzts4o' /* 35-40 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'nneqscfs' /* 40-45 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'qkctup4x' /* 45-50 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '9o27guxs' /* 50-55 */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue2 = val),
                                  width: 200.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'il8avyad' /* Select Temperature Type */,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.temperatureHigh,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  fillColor: Color(0xD60DFFA4),
                                  elevation: 2.0,
                                  borderColor: Colors.black,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.09, -0.04),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController3 ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      '9s0c2nlt' /* Winter */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'aswhfjj2' /* Summer */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'hsrcoozz' /* Spring */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'uudytzs0' /* Rainy */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownValue3 = val),
                                  width: 200.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'vgo43plq' /* Select Season */,
                                  ),
                                  icon: FaIcon(
                                    FontAwesomeIcons.searchengin,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  fillColor: Color(0xD60DFFA4),
                                  elevation: 2.0,
                                  borderColor: Colors.black,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.01, 0.3),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await geminiGenerateText(
                                    context,
                                    '${_model.dropDownValue1}${_model.dropDownValue5}${_model.dropDownValue4}${_model.dropDownValue3}${_model.dropDownValue2}',
                                  ).then((generatedText) {
                                    safeSetState(
                                        () => _model.result = generatedText);
                                  });

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  '3pz5x6f3' /* Recommend  */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.black,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF0303),
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                  hoverColor: Color(0xFF2AFF8C),
                                  hoverBorderSide: BorderSide(
                                    color: Colors.black,
                                    width: 3.0,
                                  ),
                                  hoverTextColor: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.91),
                              child: Container(
                                width: 362.7,
                                height: 199.13,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent2,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                ),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.result,
                                    'result',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.dmSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.14, -0.97),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ksdemmo-39m9f8/assets/wxbvo8vonx3v/recommednation_system.png',
                                  width: 371.0,
                                  height: 121.66,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.11, -0.22),
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController4 ??=
                                  FormFieldController<String>(null),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'h8ehgfjq' /* Alluvial Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xz6w5eoh' /* Red Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'oci4zqdr' /* Black Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '232t5wv7' /* Desert Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'd6ekggtc' /* Laterite Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'omx3yqzd' /* Mountain Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ao0ljwnn' /* Alkaline Soil */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'g8zvx71c' /* Peaty and Marshy Soil */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue4 = val),
                              width: 200.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                '5ncj36r4' /* Select Types of Soil */,
                              ),
                              icon: Icon(
                                Icons.join_left_sharp,
                                color: Colors.black,
                                size: 24.0,
                              ),
                              fillColor: Color(0xD60DFFA4),
                              elevation: 2.0,
                              borderColor: Colors.black,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.11, -0.43),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController5 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'j4j9pnzg' /* Oraganic Farming */,
                            ),
                            FFLocalizations.of(context).getText(
                              'yp3umtyd' /* Inorganic Farming */,
                            )
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue5 = val),
                          width: 200.0,
                          height: 38.89,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            't3tp2zla' /* Select Farming Type */,
                          ),
                          icon: FaIcon(
                            FontAwesomeIcons.feather,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor: Color(0xD60DFFA4),
                          elevation: 2.0,
                          borderColor: Colors.black,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
