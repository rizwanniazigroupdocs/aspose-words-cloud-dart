/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_row_format.dart">
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

/// Represents all formatting for a table row.
class TableRowFormat extends LinkElement {
  /// Gets or sets true if the text in a table row is allowed to split across a page break.
  bool allowBreakAcrossPages;

  /// Gets or sets true if the row is repeated as a table heading on every page when the table spans more than one page.
  bool headingFormat;

  /// Gets or sets the height of the table row in points.
  double height;

  /// Gets or sets the rule for determining the height of the table row.
  TableRowFormat_HeightRuleEnum heightRule;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('AllowBreakAcrossPages')) {
      allowBreakAcrossPages = json['AllowBreakAcrossPages'];
    } else {
      allowBreakAcrossPages = null;
    }

    if (json.containsKey('HeadingFormat')) {
      headingFormat = json['HeadingFormat'];
    } else {
      headingFormat = null;
    }

    if (json.containsKey('Height')) {
      height = json['Height'];
    } else {
      height = null;
    }

    if (json.containsKey('HeightRule')) {
      switch (json['HeightRule']) {
        case 'AtLeast': heightRule = TableRowFormat_HeightRuleEnum.atLeast; break;
        case 'Exactly': heightRule = TableRowFormat_HeightRuleEnum.exactly; break;
        case 'Auto': heightRule = TableRowFormat_HeightRuleEnum.auto; break;
        default: heightRule = null; break;
      }
    } else {
      heightRule = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (allowBreakAcrossPages != null) {
      _result['AllowBreakAcrossPages'] = allowBreakAcrossPages;
    }

    if (headingFormat != null) {
      _result['HeadingFormat'] = headingFormat;
    }

    if (height != null) {
      _result['Height'] = height;
    }

    if (heightRule != null) {
      switch (heightRule) {
        case TableRowFormat_HeightRuleEnum.atLeast: _result['HeightRule'] = 'AtLeast'; break;
        case TableRowFormat_HeightRuleEnum.exactly: _result['HeightRule'] = 'Exactly'; break;
        case TableRowFormat_HeightRuleEnum.auto: _result['HeightRule'] = 'Auto'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets the rule for determining the height of the table row.
enum TableRowFormat_HeightRuleEnum
{ 
  atLeast,
  exactly,
  auto
}

