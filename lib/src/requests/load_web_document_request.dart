/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="load_web_document_request.dart">
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

import 'dart:convert';
import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for LoadWebDocument operation.
class LoadWebDocumentRequest implements RequestBase {
  /// Parameters of loading.
  final LoadWebDocumentData data;

  /// Original document storage.
  final String storage;

  LoadWebDocumentRequest(final LoadWebDocumentData this.data, {final String this.storage = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String url = apiClient.configuration.getApiRootUrl() + '/words/loadWebDocument';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.storage != null) {
      queryParams['storage'] = apiClient.serializeToString(this.storage);
    }

    if (this.data != null) {
      bodyParts.add(new ApiRequestPart(apiClient.serializeBody(this.data), 'application/json'));
    }
    else {
      throw new ApiException(400, 'Parameter data is required.');
    }

    url = apiClient.applyQueryParams(url, queryParams);
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('PUT', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    var _result = new SaveResponse();
    var _jsonData = utf8.decode(_body.buffer.asUint8List(_body.offsetInBytes, _body.lengthInBytes));
    var _json = jsonDecode(_jsonData);
    _result.deserialize(_json);
    return _result;
  }
}