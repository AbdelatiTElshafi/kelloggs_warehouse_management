import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  List<String> userNamesPageState = [];
  void addToUserNamesPageState(String item) => userNamesPageState.add(item);
  void removeFromUserNamesPageState(String item) =>
      userNamesPageState.remove(item);
  void removeAtIndexFromUserNamesPageState(int index) =>
      userNamesPageState.removeAt(index);
  void insertAtIndexInUserNamesPageState(int index, String item) =>
      userNamesPageState.insert(index, item);
  void updateUserNamesPageStateAtIndex(int index, Function(String) updateFn) =>
      userNamesPageState[index] = updateFn(userNamesPageState[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetUserNames)] action in LoginPage widget.
  ApiCallResponse? getUserListResponse;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? loginResult;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
