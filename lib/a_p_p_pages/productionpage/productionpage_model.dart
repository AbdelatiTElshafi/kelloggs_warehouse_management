import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'productionpage_widget.dart' show ProductionpageWidget;
import 'package:flutter/material.dart';

class ProductionpageModel extends FlutterFlowModel<ProductionpageWidget> {
  ///  Local state fields for this page.

  String? palletsodestatus;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getopenbatch)] action in Productionpage widget.
  ApiCallResponse? getBatchResp;
  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  // State field(s) for PalletCode widget.
  FocusNode? palletCodeFocusNode;
  TextEditingController? palletCodeTextController;
  String? Function(BuildContext, String?)? palletCodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (CheckCodeStatus )] action in PalletCode widget.
  ApiCallResponse? getPalletStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    palletCodeFocusNode?.dispose();
    palletCodeTextController?.dispose();
  }
}
