/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_stat_data.dart">
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

/// Container for the page's statistical data.
class PageStatData implements ModelBase {
  /// Gets or sets detailed statistics of footnotes.
  FootnotesStatData footnotesStatData;

  /// Gets or sets page number.
  int pageNumber;

  /// Gets or sets total count of paragraphs in the page.
  int paragraphCount;

  /// Gets or sets total count of words in the page.
  int wordCount;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('FootnotesStatData')) {
      footnotesStatData = FootnotesStatData();
      footnotesStatData.deserialize(json['FootnotesStatData']);
    } else {
      footnotesStatData = null;
    }

    if (json.containsKey('PageNumber')) {
      pageNumber = json['PageNumber'];
    } else {
      pageNumber = null;
    }

    if (json.containsKey('ParagraphCount')) {
      paragraphCount = json['ParagraphCount'];
    } else {
      paragraphCount = null;
    }

    if (json.containsKey('WordCount')) {
      wordCount = json['WordCount'];
    } else {
      wordCount = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (footnotesStatData != null) {
      _result['FootnotesStatData'] = footnotesStatData.serialize();
    }

    if (pageNumber != null) {
      _result['PageNumber'] = pageNumber;
    }

    if (paragraphCount != null) {
      _result['ParagraphCount'] = paragraphCount;
    }

    if (wordCount != null) {
      _result['WordCount'] = wordCount;
    }
    return _result;
  }
}


