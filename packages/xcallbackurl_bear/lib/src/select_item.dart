import 'package:xcallbackurl_bear/src/bear_action.dart';

/// Base representation of an action that selects a Bear sidebar item
abstract class SelectItem extends BearAction {
  /// The search parameter name
  static const _searchParameterName = 'search';

  /// The show window parameter name
  static const _showWindowParameterName = 'show_window';

  /// Returns the string to search
  String? get search => getParameter(_searchParameterName);

  /// Sets the string to search
  ///
  /// * [search]: string to search
  set search(String? search) {
    setParameter(_searchParameterName, search);
  }

  /// Returns if the call should force the opening of bear main window (MacOS only).
  bool? get showWindow => getBoolParameter(_showWindowParameterName);

  /// Sets if the call should force the opening of bear main window (MacOS only).
  ///
  /// * [showWindow]: if `true` open the note in an external window (MacOS only).
  set showWindow(bool? showWindow) {
    setBoolParameter(_showWindowParameterName, showWindow);
  }

  //// Creates a Bear sidebar item select action
  ///
  /// * [action]: the action to be performed
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [search]: string to search
  /// * [showWindow]: if `false` the call don't force the opening of bear main window (MacOS only).
  SelectItem(
      {required super.action,
      super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      super.token,
      String? search,
      bool? showWindow}) {
    this.search = search;
    this.showWindow = showWindow;
  }
}
