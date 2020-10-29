/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="graphics_quality_options_data.dart">
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

/// Allows to specify additional System.Drawing.Graphics quality options.
class GraphicsQualityOptionsData implements ModelBase {
  /// Gets or sets a value that specifies how composited images are drawn to this Graphics.
  GraphicsQualityOptionsData_CompositingModeEnum compositingMode;

  /// Gets or sets the rendering quality of composited images drawn to this Graphics.
  GraphicsQualityOptionsData_CompositingQualityEnum compositingQuality;

  /// Gets or sets the interpolation mode associated with this Graphics.
  GraphicsQualityOptionsData_InterpolationModeEnum interpolationMode;

  /// Gets or sets the rendering quality for this Graphics.
  GraphicsQualityOptionsData_SmoothingModeEnum smoothingMode;

  /// Gets or sets text layout information (such as alignment, orientation and tab stops) display manipulations (such as ellipsis insertion and national digit substitution) and OpenType features.
  StringFormatData stringFormat;

  /// Gets or sets the rendering mode for text associated with this Graphics.
  GraphicsQualityOptionsData_TextRenderingHintEnum textRenderingHint;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('CompositingMode')) {
      switch (json['CompositingMode']) {
        case 'SourceOver': this.compositingMode = GraphicsQualityOptionsData_CompositingModeEnum.sourceOver; break;
        case 'SourceCopy': this.compositingMode = GraphicsQualityOptionsData_CompositingModeEnum.sourceCopy; break;
        default: this.compositingMode = null; break;
      }
    } else {
      this.compositingMode = null;
    }

    if (json.containsKey('CompositingQuality')) {
      switch (json['CompositingQuality']) {
        case 'Default': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.default_; break;
        case 'HighSpeed': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.highSpeed; break;
        case 'HighQuality': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.highQuality; break;
        case 'GammaCorrected': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.gammaCorrected; break;
        case 'AssumeLinear': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.assumeLinear; break;
        case 'Invalid': this.compositingQuality = GraphicsQualityOptionsData_CompositingQualityEnum.invalid; break;
        default: this.compositingQuality = null; break;
      }
    } else {
      this.compositingQuality = null;
    }

    if (json.containsKey('InterpolationMode')) {
      switch (json['InterpolationMode']) {
        case 'Default': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.default_; break;
        case 'Low': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.low; break;
        case 'High': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.high; break;
        case 'Bilinear': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.bilinear; break;
        case 'Bicubic': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.bicubic; break;
        case 'NearestNeighbor': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.nearestNeighbor; break;
        case 'HighQualityBilinear': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.highQualityBilinear; break;
        case 'HighQualityBicubic': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.highQualityBicubic; break;
        case 'Invalid': this.interpolationMode = GraphicsQualityOptionsData_InterpolationModeEnum.invalid; break;
        default: this.interpolationMode = null; break;
      }
    } else {
      this.interpolationMode = null;
    }

    if (json.containsKey('SmoothingMode')) {
      switch (json['SmoothingMode']) {
        case 'Default': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.default_; break;
        case 'HighSpeed': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.highSpeed; break;
        case 'HighQuality': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.highQuality; break;
        case 'None': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.none; break;
        case 'AntiAlias': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.antiAlias; break;
        case 'Invalid': this.smoothingMode = GraphicsQualityOptionsData_SmoothingModeEnum.invalid; break;
        default: this.smoothingMode = null; break;
      }
    } else {
      this.smoothingMode = null;
    }

    if (json.containsKey('StringFormat')) {
      this.stringFormat = new StringFormatData();
      this.stringFormat.deserialize(json['StringFormat']);
    } else {
      this.stringFormat = null;
    }

    if (json.containsKey('TextRenderingHint')) {
      switch (json['TextRenderingHint']) {
        case 'SystemDefault': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.systemDefault; break;
        case 'SingleBitPerPixelGridFit': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.singleBitPerPixelGridFit; break;
        case 'SingleBitPerPixel': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.singleBitPerPixel; break;
        case 'AntiAliasGridFit': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.antiAliasGridFit; break;
        case 'AntiAlias': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.antiAlias; break;
        case 'ClearTypeGridFit': this.textRenderingHint = GraphicsQualityOptionsData_TextRenderingHintEnum.clearTypeGridFit; break;
        default: this.textRenderingHint = null; break;
      }
    } else {
      this.textRenderingHint = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.compositingMode != null) {
      switch (this.compositingMode) {
        case GraphicsQualityOptionsData_CompositingModeEnum.sourceOver: _result['CompositingMode'] = 'SourceOver'; break;
        case GraphicsQualityOptionsData_CompositingModeEnum.sourceCopy: _result['CompositingMode'] = 'SourceCopy'; break;
        default: break;
      }
    }

    if (this.compositingQuality != null) {
      switch (this.compositingQuality) {
        case GraphicsQualityOptionsData_CompositingQualityEnum.default_: _result['CompositingQuality'] = 'Default'; break;
        case GraphicsQualityOptionsData_CompositingQualityEnum.highSpeed: _result['CompositingQuality'] = 'HighSpeed'; break;
        case GraphicsQualityOptionsData_CompositingQualityEnum.highQuality: _result['CompositingQuality'] = 'HighQuality'; break;
        case GraphicsQualityOptionsData_CompositingQualityEnum.gammaCorrected: _result['CompositingQuality'] = 'GammaCorrected'; break;
        case GraphicsQualityOptionsData_CompositingQualityEnum.assumeLinear: _result['CompositingQuality'] = 'AssumeLinear'; break;
        case GraphicsQualityOptionsData_CompositingQualityEnum.invalid: _result['CompositingQuality'] = 'Invalid'; break;
        default: break;
      }
    }

    if (this.interpolationMode != null) {
      switch (this.interpolationMode) {
        case GraphicsQualityOptionsData_InterpolationModeEnum.default_: _result['InterpolationMode'] = 'Default'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.low: _result['InterpolationMode'] = 'Low'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.high: _result['InterpolationMode'] = 'High'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.bilinear: _result['InterpolationMode'] = 'Bilinear'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.bicubic: _result['InterpolationMode'] = 'Bicubic'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.nearestNeighbor: _result['InterpolationMode'] = 'NearestNeighbor'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.highQualityBilinear: _result['InterpolationMode'] = 'HighQualityBilinear'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.highQualityBicubic: _result['InterpolationMode'] = 'HighQualityBicubic'; break;
        case GraphicsQualityOptionsData_InterpolationModeEnum.invalid: _result['InterpolationMode'] = 'Invalid'; break;
        default: break;
      }
    }

    if (this.smoothingMode != null) {
      switch (this.smoothingMode) {
        case GraphicsQualityOptionsData_SmoothingModeEnum.default_: _result['SmoothingMode'] = 'Default'; break;
        case GraphicsQualityOptionsData_SmoothingModeEnum.highSpeed: _result['SmoothingMode'] = 'HighSpeed'; break;
        case GraphicsQualityOptionsData_SmoothingModeEnum.highQuality: _result['SmoothingMode'] = 'HighQuality'; break;
        case GraphicsQualityOptionsData_SmoothingModeEnum.none: _result['SmoothingMode'] = 'None'; break;
        case GraphicsQualityOptionsData_SmoothingModeEnum.antiAlias: _result['SmoothingMode'] = 'AntiAlias'; break;
        case GraphicsQualityOptionsData_SmoothingModeEnum.invalid: _result['SmoothingMode'] = 'Invalid'; break;
        default: break;
      }
    }

    if (this.stringFormat != null) {
      _result['StringFormat'] = this.stringFormat.serialize();
    }

    if (this.textRenderingHint != null) {
      switch (this.textRenderingHint) {
        case GraphicsQualityOptionsData_TextRenderingHintEnum.systemDefault: _result['TextRenderingHint'] = 'SystemDefault'; break;
        case GraphicsQualityOptionsData_TextRenderingHintEnum.singleBitPerPixelGridFit: _result['TextRenderingHint'] = 'SingleBitPerPixelGridFit'; break;
        case GraphicsQualityOptionsData_TextRenderingHintEnum.singleBitPerPixel: _result['TextRenderingHint'] = 'SingleBitPerPixel'; break;
        case GraphicsQualityOptionsData_TextRenderingHintEnum.antiAliasGridFit: _result['TextRenderingHint'] = 'AntiAliasGridFit'; break;
        case GraphicsQualityOptionsData_TextRenderingHintEnum.antiAlias: _result['TextRenderingHint'] = 'AntiAlias'; break;
        case GraphicsQualityOptionsData_TextRenderingHintEnum.clearTypeGridFit: _result['TextRenderingHint'] = 'ClearTypeGridFit'; break;
        default: break;
      }
    }
    return _result;
  }
}

/// Gets or sets a value that specifies how composited images are drawn to this Graphics.
enum GraphicsQualityOptionsData_CompositingModeEnum
{ 
  sourceOver,
  sourceCopy
}

/// Gets or sets the rendering quality of composited images drawn to this Graphics.
enum GraphicsQualityOptionsData_CompositingQualityEnum
{ 
  default_,
  highSpeed,
  highQuality,
  gammaCorrected,
  assumeLinear,
  invalid
}

/// Gets or sets the interpolation mode associated with this Graphics.
enum GraphicsQualityOptionsData_InterpolationModeEnum
{ 
  default_,
  low,
  high,
  bilinear,
  bicubic,
  nearestNeighbor,
  highQualityBilinear,
  highQualityBicubic,
  invalid
}

/// Gets or sets the rendering quality for this Graphics.
enum GraphicsQualityOptionsData_SmoothingModeEnum
{ 
  default_,
  highSpeed,
  highQuality,
  none,
  antiAlias,
  invalid
}

/// Gets or sets the rendering mode for text associated with this Graphics.
enum GraphicsQualityOptionsData_TextRenderingHintEnum
{ 
  systemDefault,
  singleBitPerPixelGridFit,
  singleBitPerPixel,
  antiAliasGridFit,
  antiAlias,
  clearTypeGridFit
}

