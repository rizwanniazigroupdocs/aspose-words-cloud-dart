/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="available_fonts_response.dart">
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

/// The list of fonts, available for document processing.
class AvailableFontsResponse extends WordsResponse {
  /// Gets or sets the list of addititional fonts, provided by aspose team.
  List<FontInfo> additionalFonts;

  /// Gets or sets custom user fonts (from user file storage). To use them, you should specify "fontsLocation" parameter in any request.
  List<FontInfo> customFonts;

  /// Gets or sets the list of system fonts, availiable on the server.
  List<FontInfo> systemFonts;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('AdditionalFonts')) {
      // Array processing
      additionalFonts = <FontInfo>[];
      for(final _element in json['AdditionalFonts']) {
        var _elementValue = FontInfo();
        _elementValue.deserialize(_element);
        additionalFonts.add(_elementValue);
      }
    } else {
      additionalFonts = null;
    }

    if (json.containsKey('CustomFonts')) {
      // Array processing
      customFonts = <FontInfo>[];
      for(final _element in json['CustomFonts']) {
        var _elementValue = FontInfo();
        _elementValue.deserialize(_element);
        customFonts.add(_elementValue);
      }
    } else {
      customFonts = null;
    }

    if (json.containsKey('SystemFonts')) {
      // Array processing
      systemFonts = <FontInfo>[];
      for(final _element in json['SystemFonts']) {
        var _elementValue = FontInfo();
        _elementValue.deserialize(_element);
        systemFonts.add(_elementValue);
      }
    } else {
      systemFonts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (additionalFonts != null) {
      _result['AdditionalFonts'] = additionalFonts.map((_element) => _element.serialize()).toList();
    }

    if (customFonts != null) {
      _result['CustomFonts'] = customFonts.map((_element) => _element.serialize()).toList();
    }

    if (systemFonts != null) {
      _result['SystemFonts'] = systemFonts.map((_element) => _element.serialize()).toList();
    }
    return _result;
  }
}


