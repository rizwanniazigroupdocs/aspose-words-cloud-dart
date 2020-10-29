/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_encryption_details_data.dart">
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

/// container class for details of encryption.
class PdfEncryptionDetailsData implements ModelBase {
  /// Gets or sets specifies the encryption algorithm to use.
  String encryptionAlgorithm;

  /// Gets or sets specifies the owner password for the encrypted PDF document.
  String ownerPassword;

  /// Gets or sets specifies the operations that are allowed to a user on an encrypted PDF document.
  String permissions;

  /// Gets or sets specifies the user password required for opening the encrypted PDF document.
  String userPassword;

  @override
  void deserialize(Map<String, dynamic> json) {
    if (json.containsKey('EncryptionAlgorithm')) {
      this.encryptionAlgorithm = json['EncryptionAlgorithm'];
    } else {
      this.encryptionAlgorithm = null;
    }

    if (json.containsKey('OwnerPassword')) {
      this.ownerPassword = json['OwnerPassword'];
    } else {
      this.ownerPassword = null;
    }

    if (json.containsKey('Permissions')) {
      this.permissions = json['Permissions'];
    } else {
      this.permissions = null;
    }

    if (json.containsKey('UserPassword')) {
      this.userPassword = json['UserPassword'];
    } else {
      this.userPassword = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = new Map<String, dynamic>();
    if (this.encryptionAlgorithm != null) {
      _result['EncryptionAlgorithm'] = this.encryptionAlgorithm;
    }

    if (this.ownerPassword != null) {
      _result['OwnerPassword'] = this.ownerPassword;
    }

    if (this.permissions != null) {
      _result['Permissions'] = this.permissions;
    }

    if (this.userPassword != null) {
      _result['UserPassword'] = this.userPassword;
    }
    return _result;
  }
}


