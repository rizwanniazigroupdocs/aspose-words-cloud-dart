/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="convert_document_request.dart">
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

import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for ConvertDocument operation.
class ConvertDocumentRequest implements RequestBase {
  /// Converting document.
  final ByteData document;

  /// Format to convert.
  final String format;

  /// Original document storage.
  final String storage;

  /// Path for saving operation result to the local storage.
  final String outPath;

  /// This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "sourceFilename" will be used instead.
  final String fileNameFieldValue;

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  ConvertDocumentRequest(final this.document, final this.format, {final this.storage, final this.outPath, final this.fileNameFieldValue, final this.fontsLocation});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    var path = '/words/convert';
    var queryParams = <String, String>{};
    var headers = <String, String>{};
    var bodyParts = <ApiRequestPart>[];
    if (format != null) {
      queryParams['format'] = apiClient.serializeToString(format);
    }
    else {
      throw ApiException(400, 'Parameter format is required.');
    }

    if (storage != null) {
      queryParams['storage'] = apiClient.serializeToString(storage);
    }

    if (outPath != null) {
      queryParams['outPath'] = apiClient.serializeToString(outPath);
    }

    if (fileNameFieldValue != null) {
      queryParams['fileNameFieldValue'] = apiClient.serializeToString(fileNameFieldValue);
    }

    if (fontsLocation != null) {
      queryParams['fontsLocation'] = apiClient.serializeToString(fontsLocation);
    }

    if (document != null) {
      bodyParts.add(ApiRequestPart(apiClient.serializeBody(document), 'application/octet-stream', name: 'Document'));
    }
    else {
      throw ApiException(400, 'Parameter document is required.');
    }

    var url = apiClient.configuration.getApiRootUrl() + apiClient.applyQueryParams(path, queryParams).replaceAll('//', '/');
    var body = apiClient.serializeBodyParts(bodyParts, headers);
    return ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}