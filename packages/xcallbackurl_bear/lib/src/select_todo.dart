import 'package:xcallbackurl_bear/src/select_item.dart';

/// Select the Todo sidebar item
class SelectTodo extends SelectItem {
  /// The todo action name
  static const _actionName = 'todo';

  //// Creates a Bear action to select the Todo sidebar item
  ///
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [search]: string to search
  /// * [showWindow]: if `false` the call don't force the opening of bear main window (MacOS only).
  SelectTodo(
      {super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      super.token,
      super.search,
      super.showWindow})
      : super(action: _actionName);
}
