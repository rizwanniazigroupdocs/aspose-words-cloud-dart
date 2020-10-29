/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_result.dart">
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

/// Result of saving.
class SaveResult implements ModelBase {
  /// Gets or sets links to additional items (css, images etc).
  List<FileLink> additionalItems;

  /// Gets or sets link to destination document.
  FileLink destDocument;

  /// Gets or sets link to source document.
  FileLink sourceDocument;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('AdditionalItems')) {
      // Array processing
      this.additionalItems = new List<FileLink>();
      for(final _element in json['AdditionalItems']) {
        var _elementValue = new FileLink();
        _elementValue.deserialize(_element);
        this.additionalItems.add(_elementValue);
      }
    } else {
      this.additionalItems = null;
    }

    if (json.containsKey('DestDocument')) {
      this.destDocument = new FileLink();
      this.destDocument.deserialize(json['DestDocument']);
    } else {
      this.destDocument = null;
    }

    if (json.containsKey('SourceDocument')) {
      this.sourceDocument = new FileLink();
      this.sourceDocument.deserialize(json['SourceDocument']);
    } else {
      this.sourceDocument = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.additionalItems != null) {
      _result['AdditionalItems'] = this.additionalItems.map((_element) => _element.serialize()).toList();
    }

    if (this.destDocument != null) {
      _result['DestDocument'] = this.destDocument.serialize();
    }

    if (this.sourceDocument != null) {
      _result['SourceDocument'] = this.sourceDocument.serialize();
    }
    return _result;
  }
}


