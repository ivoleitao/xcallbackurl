import 'package:xcallbackurl_bear/src/select_item.dart';

/// Select the Today sidebar item
class SelectToday extends SelectItem {
  /// The today action name
  static const _actionName = 'today';

  //// Creates a Bear action to select the Today sidebar item
  ///
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [search]: string to search
  /// * [showWindow]: if `false` the call don't force the opening of bear main window (MacOS only).
  SelectToday(
      {super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      super.token,
      super.search,
      super.showWindow})
      : super(action: _actionName);
}
