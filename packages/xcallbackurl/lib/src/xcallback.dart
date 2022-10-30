/// The base class defining the 'x-callback-url'
class XCallback {
  /// URLs are identified by the use of “x-callback-url” as the host portion
  /// of the URL.
  static const String _hostValue = 'x-callback-url';

  /// Reserved "x-callback-url" parameter name which stores the friendly
  /// name of the source app calling the action.
  static const String _xSourceParameterName = 'x-source';

  /// Reserved "x-callback-url" parameter name whose value store a url that the
  /// target app calls on success of the action
  static const String _xSuccessParameterName = 'x-success';

  /// Reserved "x-callback-url" parameter name whose value store a url that the
  /// target app calls on error of the action
  static const String _xErrorParameterName = 'x-error';

  /// Reserved "x-callback-url" parameter name whose value store a url that the
  /// target app calls if the user cancels the action
  static const String _xCancelParameterName = 'x-cancel';

  /// The unique identifier the target app
  String scheme;

  /// The action to be performed
  String action;

  /// The query parameters
  final Map<String, String> _queryParameters = {};

  /// Gets a x-callback-url parameter value
  ///
  /// * [name]: the name of the parameter
  String? getParameter(String name) {
    final value = _queryParameters[name];
    if (value != null) {
      Uri.decodeComponent(value);
    }

    return null;
  }

  /// Gets a x-callback-url parameter by name.
  ///
  /// * [name]: the parameter name
  String? operator [](String name) {
    return getParameter(name);
  }

  /// Sets a x-callback-url parameter
  ///
  /// * [name]: the name of the parameter to set
  /// * [value]: the value of the parameter to set
  void setParameter(String name, String? value) {
    if (value != null) {
      _queryParameters[name] = Uri.encodeComponent(value);
    } else {
      _queryParameters.remove(name);
    }
  }

  /// Sets a x-callback-url parameter
  ///
  /// * [name]: the parameter name
  /// * [value]: the parameter value
  ///
  /// Note: the 'x-' prefix is reserved for future use
  operator []=(String name, String value) {
    setParameter(name, value);
  }

  /// Returns the friendly name of the source app calling the action
  String? get xSource => getParameter(_xSourceParameterName);

  /// Sets the friendly name of the source app calling the action
  set xSource(String? value) {
    setParameter(_xSourceParameterName, value);
  }

  /// Sets the action that the target app calls on success
  ///
  /// * [value]: the success action
  set xSuccess(XCallback? value) {
    setParameter(_xSuccessParameterName, value?.toString());
  }

  /// Sets the action that the target app calls on error
  ///
  /// * [value]: the error action
  set xError(XCallback? value) {
    setParameter(_xErrorParameterName, value?.toString());
  }

  /// Sets the action that the target app calls when the user cancels
  ///
  /// * [value]: the cancel action
  set xCancel(XCallback? value) {
    setParameter(_xCancelParameterName, value?.toString());
  }

  //// Creates a x-callback-url [XCallback]
  ///
  /// * [scheme]: the unique identifier the target app
  /// * [action]: the action to be performed
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [parameters]: the parameters map
  XCallback(
      {required this.scheme,
      required this.action,
      String? xSource,
      XCallback? xSuccess,
      XCallback? xError,
      XCallback? xCancel,
      Map<String, String>? parameters}) {
    this.xSource = xSource;
    this.xSuccess = xSuccess;
    this.xError = xError;
    this.xCancel = xCancel;
    if (parameters != null) {
      for (var entry in parameters.entries) {
        setParameter(entry.key, entry.value);
      }
    }
  }

  @override
  String toString() {
    final buffer = StringBuffer('$scheme://$_hostValue/$action');

    var first = true;
    for (var entry in _queryParameters.entries) {
      if (first) {
        buffer.write('?');
        first = false;
      } else {
        buffer.write('&');
      }
      buffer.write('${entry.key}=${entry.value}');
    }

    return buffer.toString();
  }
}
