/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="section_link_collection.dart">
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

/// Collection of links to sections.
class SectionLinkCollection extends LinkElement {
  /// Gets or sets collection of section's links.
  List<SectionLink> sectionLinkList;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('SectionLinkList')) {
      // Array processing
      this.sectionLinkList = new List<SectionLink>();
      for(final _element in json['SectionLinkList']) {
        var _elementValue = new SectionLink();
        _elementValue.deserialize(_element);
        this.sectionLinkList.add(_elementValue);
      }
    } else {
      this.sectionLinkList = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.sectionLinkList != null) {
      _result['SectionLinkList'] = this.sectionLinkList.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


