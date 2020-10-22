/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="fixed_page_save_options_data.dart">
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

/// Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
class FixedPageSaveOptionsData extends SaveOptionsData {
  /// Gets or sets a value determining how colors are rendered.
  /// { Normal | Grayscale}.
  String colorMode;

  /// Gets or sets determines the quality of the JPEG images inside PDF document.
  int jpegQuality;

  /// Gets or sets allows to specify metafile rendering options.
  MetafileRenderingOptionsData metafileRenderingOptions;

  /// Gets or sets indicates the symbol set that is used to represent numbers while rendering to fixed page formats.
  String numeralFormat;

  /// Gets or sets flag indicates whether it is required to optimize output of XPS.
  /// If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated.
  /// Note: The accuracy of the content display may be affected if this property is set to true.  Default is false.
  bool optimizeOutput;

  /// Gets or sets determines number of pages to render.
  int pageCount;

  /// Gets or sets determines 0-based index of the first page to render.
  int pageIndex;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ColorMode')) {
      this.colorMode = json['ColorMode'];
    } else {
      this.colorMode = null;
    }

    if (json.containsKey('JpegQuality')) {
      this.jpegQuality = json['JpegQuality'];
    } else {
      this.jpegQuality = null;
    }

    if (json.containsKey('MetafileRenderingOptions')) {
      this.metafileRenderingOptions = new MetafileRenderingOptionsData();
      this.metafileRenderingOptions.deserialize(json['MetafileRenderingOptions']);
    } else {
      this.metafileRenderingOptions = null;
    }

    if (json.containsKey('NumeralFormat')) {
      this.numeralFormat = json['NumeralFormat'];
    } else {
      this.numeralFormat = null;
    }

    if (json.containsKey('OptimizeOutput')) {
      this.optimizeOutput = json['OptimizeOutput'];
    } else {
      this.optimizeOutput = null;
    }

    if (json.containsKey('PageCount')) {
      this.pageCount = json['PageCount'];
    } else {
      this.pageCount = null;
    }

    if (json.containsKey('PageIndex')) {
      this.pageIndex = json['PageIndex'];
    } else {
      this.pageIndex = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.colorMode != null) {
      _result['ColorMode'] = this.colorMode;
    }

    if (this.jpegQuality != null) {
      _result['JpegQuality'] = this.jpegQuality;
    }

    if (this.metafileRenderingOptions != null) {
      _result['MetafileRenderingOptions'] = this.metafileRenderingOptions.serialize();
    }

    if (this.numeralFormat != null) {
      _result['NumeralFormat'] = this.numeralFormat;
    }

    if (this.optimizeOutput != null) {
      _result['OptimizeOutput'] = this.optimizeOutput;
    }

    if (this.pageCount != null) {
      _result['PageCount'] = this.pageCount;
    }

    if (this.pageIndex != null) {
      _result['PageIndex'] = this.pageIndex;
    }
    return _result;
  }
}


