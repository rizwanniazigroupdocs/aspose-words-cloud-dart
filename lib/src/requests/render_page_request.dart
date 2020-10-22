/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="render_page_request.dart">
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

/// Request model for RenderPage operation.
class RenderPageRequest implements RequestBase {
  /// The document name.
  final String name;

  /// Comment index.
  final int pageIndex;

  /// The destination format.
  final String format;

  /// Original document folder.
  final String folder;

  /// Original document storage.
  final String storage;

  /// Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
  final String loadEncoding;

  /// Password for opening an encrypted document.
  final String password;

  /// Folder in filestorage with custom fonts.
  final String fontsLocation;

  RenderPageRequest(final String this.name, final int this.pageIndex, final String this.format, {final String this.folder = null, final String this.storage = null, final String this.loadEncoding = null, final String this.password = null, final String this.fontsLocation = null});

  @override
  ApiRequestData createRequestData(final ApiClient apiClient) {
    String url = apiClient.configuration.getApiRootUrl() + '/words/{name}/pages/{pageIndex}/render';
    Map<String, String> queryParams = new Map<String, String>();
    Map<String, String> headers = new Map<String, String>();
    List<ApiRequestPart> bodyParts = new List<ApiRequestPart>();
    if (this.name == null) {
      throw new ApiException(400, 'Parameter name is required.');
    }
    url = url.replaceAll('{name}', apiClient.serializeToString(this.name));

    if (this.pageIndex == null) {
      throw new ApiException(400, 'Parameter pageIndex is required.');
    }
    url = url.replaceAll('{pageIndex}', apiClient.serializeToString(this.pageIndex));
    if (this.format != null) {
      queryParams['format'] = apiClient.serializeToString(this.format);
    }
    else {
      throw new ApiException(400, 'Parameter format is required.');
    }

    if (this.folder != null) {
      queryParams['folder'] = apiClient.serializeToString(this.folder);
    }

    if (this.storage != null) {
      queryParams['storage'] = apiClient.serializeToString(this.storage);
    }

    if (this.loadEncoding != null) {
      queryParams['loadEncoding'] = apiClient.serializeToString(this.loadEncoding);
    }

    if (this.password != null) {
      queryParams['password'] = apiClient.serializeToString(this.password);
    }

    if (this.fontsLocation != null) {
      queryParams['fontsLocation'] = apiClient.serializeToString(this.fontsLocation);
    }

    url = apiClient.applyQueryParams(url, queryParams);
    ByteData body = apiClient.serializeBodyParts(bodyParts, headers);
    return new ApiRequestData('GET', url, headers, body);
  }

  @override
  dynamic deserializeResponse(final ByteData _body) {
    return _body;
  }
}