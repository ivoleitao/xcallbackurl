import 'package:xcallbackurl_bear/src/bear_action.dart';

class OpenTag extends BearAction {
  /// The open-tag action name
  static const _actionName = 'open-tag';

  /// The name parameter name
  static const _nameParameterName = 'name';

  /// Returns the note tag name or a list of tags divided by comma
  String? get name => getParameter(_nameParameterName);

  /// Sets the note unique identifier
  ///
  /// * [name]: tag name or a list of tags divided by comma
  set name(String? name) {
    setParameter(_nameParameterName, name);
  }

  //// Creates a Bear open-tag action
  ///
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [name]: tag name or a list of tags divided by comma
  OpenTag(
      {super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      super.token,
      String? name})
      : super(action: _actionName) {
    this.name = name;
  }
}
