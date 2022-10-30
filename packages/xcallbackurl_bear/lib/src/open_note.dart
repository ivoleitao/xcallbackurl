import 'package:xcallbackurl_bear/src/bear_action.dart';

class OpenNote extends BearAction {
  /// The open-note action name
  static const _actionName = 'open-note';

  /// The id parameter name
  static const _idParameterName = 'id';

  /// The title parameter name
  static const _titleParameterName = 'title';

  /// The header parameter name
  static const _headerParameterName = 'header';

  /// The exclude trashed notes parameter name
  static const _excludeTrashedParameter = 'exclude_trashed';

  /// The new window parameter name
  static const _newWindowParameterName = 'new_window';

  /// The float paramter name
  static const _floatParameterName = 'float';

  /// The show window parameter name
  static const _showWindowParameterName = 'show_window';

  /// The open note parameter name
  static const _openNoteParameterName = 'open_note';

  /// The selected parameter name
  static const _selectedParameterName = 'selected';

  /// The pin parameter name
  static const _pinParameterName = 'pin';

  /// The edit parameter name
  static const _editParameterName = 'edit';

  /// Returns the note unique identifier
  String? get id => getParameter(_idParameterName);

  /// Sets the note unique identifier
  ///
  /// * [id]: the id of the note
  set id(String? id) {
    setParameter(_idParameterName, id);
  }

  /// Returns the note title
  String? get title => getParameter(_titleParameterName);

  /// Sets the note title
  ///
  /// * [title]: the note title
  set title(String? title) {
    setParameter(_titleParameterName, title);
  }

  /// Returns the note header
  String? get header => getParameter(_headerParameterName);

  /// Sets the note header
  ///
  /// * [header]: the note header
  set header(String? header) {
    setParameter(_headerParameterName, header);
  }

  /// Returns if the the trashed notes should be excluded
  bool? get excludeTrashed => getBoolParameter(_excludeTrashedParameter);

  /// Sets if the trashed notes should be excluded
  ///
  /// * [excludeTrashed]: if `true` exclude trashed notes.
  set excludeTrashed(bool? excludeTrashed) {
    setBoolParameter(_excludeTrashedParameter, excludeTrashed);
  }

  /// Returns if the note should be open on an external window (MacOS only)
  bool? get newWindow => getBoolParameter(_newWindowParameterName);

  /// Sets if the note should be open on an external window (MacOS only)
  ///
  /// * [newWindow]: if `true` open the note on an external window (MacOS only).
  set newWindow(bool? newWindow) {
    setBoolParameter(_newWindowParameterName, newWindow);
  }

  /// Returns if it is to make the external window float on top (MacOS only)
  bool? get float => getBoolParameter(_floatParameterName);

  /// Sets if it is to make the external window float on top (MacOS only)
  ///
  /// * [float]: if `true` makes the external window float on top (MacOS only).
  set float(bool? float) {
    setBoolParameter(_floatParameterName, float);
  }

  /// Returns if the call should force the opening of bear main window (MacOS only).
  bool? get showWindow => getBoolParameter(_showWindowParameterName);

  /// Sets if the call should force the opening of bear main window (MacOS only).
  ///
  /// * [showWindow]: if `true` open the note in an external window (MacOS only).
  set showWindow(bool? showWindow) {
    setBoolParameter(_showWindowParameterName, showWindow);
  }

  /// Returns if the new note should be displayed in Bear's main or external window
  bool? get openNote => getBoolParameter(_openNoteParameterName);

  /// Sets if the new note should be displayed in Bear's main or external window
  ///
  /// * [openNote]: if `false` do not display the new note in Bear’s main or external window.
  set openNote(bool? openNote) {
    setBoolParameter(_openNoteParameterName, openNote);
  }

  /// Returns if the note currently selected in Bear should be returned (token required)
  bool? get selected => getBoolParameter(_selectedParameterName);

  /// Sets if the note currently selected in Bear should be returned (token required)
  ///
  /// * [selected]: if `true` return the note currently selected in Bear (token required)
  set selected(bool? selected) {
    setBoolParameter(_selectedParameterName, selected);
  }

  /// Returns if the note should be pinned to the top of the list
  bool? get pin => getBoolParameter(_pinParameterName);

  /// Sets if the note should be pinned to the top of the list
  ///
  /// * [pin]: if `true` pin the note to the top of the list.
  set pin(bool? pin) {
    setBoolParameter(_pinParameterName, pin);
  }

  /// Returns if the cursor should be placed inside the note editor
  bool? get edit => getBoolParameter(_editParameterName);

  /// Sets if the cursor should be placed inside the note editor
  ///
  /// * [edit]: if `true` place the cursor inside the note editor.
  set edit(bool? edit) {
    setBoolParameter(_editParameterName, edit);
  }

  //// Creates a Bear open-note action
  ///
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [token]: the application token
  /// * [id]: note unique identifier
  /// * [title]: note title
  /// * [header]: an header inside the note.
  /// * [excludeTrashed]: if `true` exclude trashed notes.
  /// * [newWindow]: if `true` open the note in an external window (MacOS only).
  /// * [float]: if `true` makes the external window float on top (MacOS only).
  /// * [showWindow]: if `false` the call don't force the opening of bear main window (MacOS only).
  /// * [openNote]: if `false` do not display the new note in Bear’s main or external window.
  /// * [selected]: if `true` return the note currently selected in Bear (token required)
  /// * [pin]: if `true` pin the note to the top of the list.
  /// * [edit]: if `true` place the cursor inside the note editor.
  OpenNote(
      {super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      super.token,
      String? id,
      String? title,
      String? header,
      bool? excludeTrashed,
      bool? newWindow,
      bool? float,
      bool? showWindow,
      bool? openNote,
      bool? selected,
      bool? pin,
      bool? edit})
      : super(action: _actionName) {
    this.id = id;
    this.title = title;
    this.header = header;
    this.excludeTrashed = excludeTrashed;
    this.float = float;
    this.showWindow = showWindow;
    this.openNote = openNote;
    this.selected = selected;
    this.pin = pin;
    this.edit = edit;
  }
}
