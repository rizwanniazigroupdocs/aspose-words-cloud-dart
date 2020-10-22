/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="xaml_flow_save_options_data.dart">
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

/// container class for xaml flow save options.
class XamlFlowSaveOptionsData extends SaveOptionsData {
  /// Gets or sets specifies the physical folder where images are saved when exporting.
  String imagesFolder;

  /// Gets or sets specifies the name of the folder used to construct image URIs.
  String imagesFolderAlias;

  @override
  void deserialize(Map<String, dynamic> json) {
    super.deserialize(json);
    if (json.containsKey('ImagesFolder')) {
      this.imagesFolder = json['ImagesFolder'];
    } else {
      this.imagesFolder = null;
    }

    if (json.containsKey('ImagesFolderAlias')) {
      this.imagesFolderAlias = json['ImagesFolderAlias'];
    } else {
      this.imagesFolderAlias = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    _result.addAll(super.serialize());
    if (this.imagesFolder != null) {
      _result['ImagesFolder'] = this.imagesFolder;
    }

    if (this.imagesFolderAlias != null) {
      _result['ImagesFolderAlias'] = this.imagesFolderAlias;
    }
    return _result;
  }
}


