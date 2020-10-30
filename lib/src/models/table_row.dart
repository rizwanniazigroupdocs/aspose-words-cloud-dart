/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_row.dart">
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

/// Table row element.
class TableRow extends NodeLink {
  /// Gets or sets provides access to the formatting properties of the row.
  TableRowFormat rowFormat;

  /// Gets or sets collection of table's rows.
  List<TableCell> tableCellList;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableRow data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RowFormat')) {
      rowFormat = TableRowFormat();
      rowFormat.deserialize(json['RowFormat'] as Map<String, dynamic>);
    } else {
      rowFormat = null;
    }

    if (json.containsKey('TableCellList')) {
      // Array processing
      tableCellList = <TableCell>[];
      for(final _element in json['TableCellList']) {
        var _elementValue = TableCell();
        _elementValue.deserialize(_element as Map<String, dynamic>);
        tableCellList.add(_elementValue);
      }
    } else {
      tableCellList = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (rowFormat != null) {
      _result['RowFormat'] = rowFormat.serialize();
    }

    if (tableCellList != null) {
      _result['TableCellList'] = tableCellList.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


