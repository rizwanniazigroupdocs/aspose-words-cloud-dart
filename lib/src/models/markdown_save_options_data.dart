/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="markdown_save_options_data.dart">
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

/// Container class for markdown save options.
class MarkdownSaveOptionsData extends TxtSaveOptionsBaseData {
  /// Gets or sets the value, that specifies how to align contents in tables when exporting into the Markdown format.
  /// The default value is Auto.
  MarkdownSaveOptionsData_TableContentAlignmentEnum tableContentAlignment;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize MarkdownSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('TableContentAlignment')) {
      switch (json['TableContentAlignment'] as String) {
        case 'Auto': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.auto; break;
        case 'Left': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.left; break;
        case 'Center': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.center; break;
        case 'Right': tableContentAlignment = MarkdownSaveOptionsData_TableContentAlignmentEnum.right; break;
        default: tableContentAlignment = null; break;
      }
    } else {
      tableContentAlignment = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (tableContentAlignment != null) {
      switch (tableContentAlignment) {
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.auto: _result['TableContentAlignment'] = 'Auto'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.left: _result['TableContentAlignment'] = 'Left'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.center: _result['TableContentAlignment'] = 'Center'; break;
        case MarkdownSaveOptionsData_TableContentAlignmentEnum.right: _result['TableContentAlignment'] = 'Right'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the value, that specifies how to align contents in tables when exporting into the Markdown format.
/// The default value is Auto.
enum MarkdownSaveOptionsData_TableContentAlignmentEnum
{ 
  auto,
  left,
  center,
  right
}

