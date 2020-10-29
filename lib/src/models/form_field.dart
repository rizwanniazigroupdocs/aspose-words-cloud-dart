/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field.dart">
 *   Copyright (c) 2020 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

library aspose_words_cloud;

import '../../aspose_words_cloud.dart';

/// FromField.
class FormField extends NodeLink {
  /// Gets or sets true if references to the specified form field are automatically updated whenever the field is exited.
  bool calculateOnExit;

  /// Gets or sets true if a form field is enabled.
  bool enabled;

  /// Gets or sets returns or sets an entry macro name for the form field.
  String entryMacro;

  /// Gets or sets returns or sets an exit macro name for the form field.
  String exitMacro;

  /// Gets or sets returns or sets the text that's displayed in a message box when the form field has the focus and the user presses F1.
  String helpText;

  /// Gets or sets the form field name.
  String name;

  /// Gets or sets specifies the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
  bool ownHelp;

  /// Gets or sets specifies the source of the text that's displayed in the status bar when a form field has the focus.
  bool ownStatus;

  /// Gets or sets returns or sets the text that's displayed in the status bar when a form field has the focus.
  String statusText;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('CalculateOnExit')) {
      calculateOnExit = json['CalculateOnExit'];
    } else {
      calculateOnExit = null;
    }

    if (json.containsKey('Enabled')) {
      enabled = json['Enabled'];
    } else {
      enabled = null;
    }

    if (json.containsKey('EntryMacro')) {
      entryMacro = json['EntryMacro'];
    } else {
      entryMacro = null;
    }

    if (json.containsKey('ExitMacro')) {
      exitMacro = json['ExitMacro'];
    } else {
      exitMacro = null;
    }

    if (json.containsKey('HelpText')) {
      helpText = json['HelpText'];
    } else {
      helpText = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'];
    } else {
      name = null;
    }

    if (json.containsKey('OwnHelp')) {
      ownHelp = json['OwnHelp'];
    } else {
      ownHelp = null;
    }

    if (json.containsKey('OwnStatus')) {
      ownStatus = json['OwnStatus'];
    } else {
      ownStatus = null;
    }

    if (json.containsKey('StatusText')) {
      statusText = json['StatusText'];
    } else {
      statusText = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (calculateOnExit != null) {
      _result['CalculateOnExit'] = calculateOnExit;
    }

    if (enabled != null) {
      _result['Enabled'] = enabled;
    }

    if (entryMacro != null) {
      _result['EntryMacro'] = entryMacro;
    }

    if (exitMacro != null) {
      _result['ExitMacro'] = exitMacro;
    }

    if (helpText != null) {
      _result['HelpText'] = helpText;
    }

    if (name != null) {
      _result['Name'] = name;
    }

    if (ownHelp != null) {
      _result['OwnHelp'] = ownHelp;
    }

    if (ownStatus != null) {
      _result['OwnStatus'] = ownStatus;
    }

    if (statusText != null) {
      _result['StatusText'] = statusText;
    }
    return _result;
  }
}


