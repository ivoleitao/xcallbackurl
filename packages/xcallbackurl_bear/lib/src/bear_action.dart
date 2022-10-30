import 'dart:convert';
import 'dart:typed_data';

import 'package:xcallbackurl/xcallbackurl.dart';

/// Base class for Bear implementation of x-callback-url action
abstract class BearAction extends XCallback {
  /// The scheme of the bear implementation of x-callback-url
  static const _scheme = 'bear';

  /// The token parameter name
  static const _tokenParameterName = 'token';

  /// Converts `true`/`false` to the representation expected by Bear
  static const _boolToString = {true: 'yes', false: 'no'};

  /// Converts `yes`/`no` to bool
  static const _stringToBool = {'yes': true, 'no': false};

  //// Creates a Bear action
  ///
  /// * [action]: the action to be performed
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [parameters]: the action parameters
  BearAction(
      {required super.action,
      super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      String? token,
      super.parameters})
      : super(scheme: _scheme) {
    setParameter(_tokenParameterName, token);
  }

  /// Get a a Bear x-callback-url bool parameter. In the Bear implementation
  /// of the spec `true` is represented as `yes` and `false` as `no`
  ///
  /// * [name]: the name of the parameter to get
  bool? getBoolParameter(String name) {
    return _stringToBool[getParameter(name)];
  }

  /// Sets a a Bear x-callback-url bool parameter. In the Bear implementation
  /// of the spec `true` is represented as `yes` and `false` as `no`
  ///
  /// * [name]: the name of the parameter to set
  /// * [value]: the value of the parameter to set
  void setBoolParameter(String name, bool? value) {
    setParameter(name, _boolToString[value]);
  }

  /// Get a a Bear x-callback-url binary parameter.
  ///
  /// * [name]: the name of the parameter to get
  Uint8List? getBinaryParameter(String name) {
    final value = getParameter(name);
    if (value != null) {
      return base64Decode(value);
    }

    return null;
  }

  /// Get a a Bear x-callback-url enum parameter.
  ///
  /// * [name]: the name of the parameter to get
  /// * [enumValues]: the enum values
  T? getEnumParameter<T extends Enum>(String name, Map<String, T> enumValues) {
    final value = getParameter(name);
    if (value != null) {
      return enumValues[value];
    }

    return null;
  }

  /// Sets a a Bear x-callback-url enum parameter.
  ///
  /// * [name]: the name of the parameter to set
  /// * [value]: the value of the parameter to set
  void setEnumParameter<T extends Enum>(String name, T? value) {
    setParameter(name, value?.name);
  }

  /// Sets a a Bear x-callback-url binary parameter.
  ///
  /// * [name]: the name of the parameter to set
  /// * [value]: the value of the parameter to set
  void setBinaryParameter(String name, Uint8List? value) {
    setParameter(name, value != null ? base64Encode(value) : null);
  }

  /// Get a a Bear x-callback-url list parameter.
  ///
  /// * [name]: the name of the parameter to get
  List<String>? getListParameter(String name) {
    return getParameter(name)?.split(',');
  }

  /// Sets a a Bear x-callback-url list parameter.
  ///
  /// * [name]: the name of the parameter to set
  /// * [value]: the value of the parameter to set
  void setListParameter(String name, List<String>? values) {
    setParameter(name, values?.join(','));
  }

  /// Returns the application token
  String? get token => getParameter(_tokenParameterName);

  /// Sets the application token
  set token(String? value) {
    setParameter(_tokenParameterName, value);
  }
}
