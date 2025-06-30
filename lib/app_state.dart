import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _LoginStatusAppState = 'LogedOut';
  String get LoginStatusAppState => _LoginStatusAppState;
  set LoginStatusAppState(String value) {
    _LoginStatusAppState = value;
  }

  String _BatchNO = 'Null';
  String get BatchNO => _BatchNO;
  set BatchNO(String value) {
    _BatchNO = value;
  }

  String _BatchMFG = 'Null';
  String get BatchMFG => _BatchMFG;
  set BatchMFG(String value) {
    _BatchMFG = value;
  }

  String _WorkOrder = 'NoWorkOrder';
  String get WorkOrder => _WorkOrder;
  set WorkOrder(String value) {
    _WorkOrder = value;
  }

  String _ScannedBarcode = '';
  String get ScannedBarcode => _ScannedBarcode;
  set ScannedBarcode(String value) {
    _ScannedBarcode = value;
  }

  List<String> _EmptyListConstant = ['Error'];
  List<String> get EmptyListConstant => _EmptyListConstant;
  set EmptyListConstant(List<String> value) {
    _EmptyListConstant = value;
  }

  void addToEmptyListConstant(String value) {
    EmptyListConstant.add(value);
  }

  void removeFromEmptyListConstant(String value) {
    EmptyListConstant.remove(value);
  }

  void removeAtIndexFromEmptyListConstant(int index) {
    EmptyListConstant.removeAt(index);
  }

  void updateEmptyListConstantAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    EmptyListConstant[index] = updateFn(_EmptyListConstant[index]);
  }

  void insertAtIndexInEmptyListConstant(int index, String value) {
    EmptyListConstant.insert(index, value);
  }

  String _test = '';
  String get test => _test;
  set test(String value) {
    _test = value;
  }

  String _LogedUserName = '';
  String get LogedUserName => _LogedUserName;
  set LogedUserName(String value) {
    _LogedUserName = value;
  }

  String _LogedRole = '';
  String get LogedRole => _LogedRole;
  set LogedRole(String value) {
    _LogedRole = value;
  }
}
