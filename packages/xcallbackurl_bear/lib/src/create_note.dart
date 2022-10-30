import 'dart:typed_data';

import 'package:xcallbackurl_bear/src/bear_action.dart';

/// The note text type
enum TextType {
  /// Html type
  html
}

class CreateNote extends BearAction {
  /// The create action name
  static const _actionName = 'create';

  /// The title parameter name
  static const _titleParameterName = 'title';

  /// The text parameter name
  static const _textParameterName = 'text';

  /// The clipboard parameter name
  static const _clipboardParameterName = 'clipboard';

  /// The tags parameter name
  static const _tagsParameterName = 'tags';

  /// The file parameter name
  static const _fileParameterName = 'file';

  /// The file name parameter name
  static const _fileNameParameterName = 'filename';

  /// The open note parameter name
  static const _openNoteParameterName = 'open_note';

  /// The new window parameter name
  static const _newWindowParameterName = 'new_window';

  /// The float paramter name
  static const _floatParameterName = 'float';

  /// The show window parameter name
  static const _showWindowParameterName = 'show_window';

  /// The pin parameter name
  static const _pinParameterName = 'pin';

  /// The edit parameter name
  static const _editParameterName = 'edit';

  /// The timestamp parameter name
  static const _timestampParameterName = 'timestamp';

  /// The type parameter name
  static const _typeParameterName = 'type';

  /// The url parameter name
  static const _urlParameterName = 'url';

  /// Returns the note title
  String? get title => getParameter(_titleParameterName);

  /// Sets the note title
  ///
  /// * [title]: the note title
  set title(String? title) {
    setParameter(_titleParameterName, title);
  }

  /// Returns the note body
  String? get text => getParameter(_textParameterName);

  /// Sets the note body
  ///
  /// * [text]: the note body
  set text(String? text) {
    setParameter(_textParameterName, text);
  }

  /// Returns if the text currently available in the clipboard should be used
  bool? get clipboard => getBoolParameter(_clipboardParameterName);

  /// Sets if the text currently available in the clipboard should be used
  ///
  /// * [clipboard]: if `true` use the text currently available in the clipboard
  set clipboard(bool? clipboard) {
    setBoolParameter(_clipboardParameterName, clipboard);
  }

  /// Returns the tags
  List<String>? get tags => getListParameter(_tagsParameterName);

  /// Sets the tags
  ///
  /// * [tags]: the tags
  set tags(List<String>? tags) {
    setListParameter(_tagsParameterName, tags);
  }

  /// Returns the file that should be attached to the note
  Uint8List? get file => getBinaryParameter(_fileParameterName);

  /// Sets the file that should be attached to the note
  ///
  /// * [file]: a file
  set file(Uint8List? file) {
    setBinaryParameter(_fileParameterName, file);
  }

  /// Returns the filename
  String? get fileName => getParameter(_fileNameParameterName);

  /// Sets the filename
  ///
  /// * [fileName]: the filename
  set fileName(String? fileName) {
    setParameter(_fileNameParameterName, fileName);
  }

  /// Returns if the new note should be displayed in Bear's main or external window
  bool? get openNote => getBoolParameter(_openNoteParameterName);

  /// Sets if the new note should be displayed in Bear's main or external window
  ///
  /// * [openNote]: if `false` do not display the new note in Bear’s main or external window.
  set openNote(bool? openNote) {
    setBoolParameter(_openNoteParameterName, openNote);
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

  /// Returns if the current date and time should be prepended to the text
  bool? get timestamp => getBoolParameter(_timestampParameterName);

  /// Sets if the current date and time should be prepended to the text
  ///
  /// * [timestamp]: if `true` prepend the current date and time to the text
  set timestamp(bool? timestamp) {
    setBoolParameter(_timestampParameterName, timestamp);
  }

  /// Returns the text type
  TextType? get type => getEnumParameter<TextType>(
      _typeParameterName, TextType.values.asNameMap());

  /// Sets the text type
  ///
  /// * [type]: if `html` the provided text parameter is converted from html to markdown
  set type(TextType? type) {
    setEnumParameter<TextType>(_typeParameterName, type);
  }

  /// Returns the url used to resolve image links where [type] is `html`
  String? get url => getParameter(_urlParameterName);

  /// Sets the url used to resolve image links where [type] is `html`
  ///
  /// * [url]: the url
  set url(String? url) {
    setParameter(_urlParameterName, url);
  }

  //// Creates a Bear open-note action
  ///
  /// * [xSource]: the friendly name of the source app calling the action
  /// * [xSuccess]: the action that the target app calls on success
  /// * [xError]: the action that the target app calls on error
  /// * [xCancel]: the action that the target app calls when the user cancels
  /// * [title]: note title
  /// * [text]: note body
  /// * [clipboard]: if `true` use the text currently available in the clipboard
  /// * [tags]: a list of tags
  /// * [file]: a file to attach to the note
  /// * [fileName]: file name with extension. Both file and fileName are required to successfully add a file.
  /// * [openNote]: if `false` do not display the new note in Bear’s main or external window.
  /// * [newWindow]: if `true` open the note in an external window (MacOS only).
  /// * [float]: if `true` makes the external window float on top (MacOS only).
  /// * [showWindow]: if `false` the call don't force the opening of bear main window (MacOS only).
  /// * [pin]: if `true` pin the note to the top of the list.
  /// * [edit]: if `true` place the cursor inside the note editor.
  /// * [timestamp]: if `true` prepend the current date and time to the text
  /// * [type]: if `html` the provided text parameter is converted from html to markdown
  /// * [url]: if type is `html` this parameter is used to resolve relative image links
  CreateNote(
      {super.xSource,
      super.xSuccess,
      super.xError,
      super.xCancel,
      String? title,
      String? text,
      bool? clipboard,
      List<String>? tags,
      Uint8List? file,
      String? fileName,
      bool? openNote,
      bool? newWindow,
      bool? float,
      bool? showWindow,
      bool? pin,
      bool? edit,
      bool? timestamp,
      TextType? type,
      String? url})
      : super(action: _actionName) {
    this.title = title;
    this.text = text;
    this.clipboard = clipboard;
    this.tags = tags;
    this.file = file;
    this.fileName = fileName;
    this.openNote = openNote;
    this.newWindow = newWindow;
    this.float = float;
    this.showWindow = showWindow;
    this.pin = pin;
    this.edit = edit;
    this.timestamp = timestamp;
    this.type = type;
    this.url = url;
  }
}
