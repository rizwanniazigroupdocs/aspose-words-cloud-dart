/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="api_client.dart">
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
import '../aspose_words_cloud.dart';
import './api_request_data.dart';
import './api_request_part.dart';
import './byte_data_extensions.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

class ApiClient {
  String _authToken;
  final _starting = ByteData.view(utf8.encoder.convert('--').buffer);
  final _newline = ByteData.view(utf8.encoder.convert('\r\n').buffer);
  final _2newline = ByteData.view(utf8.encoder.convert('\r\n\r\n').buffer);

  final Configuration configuration;

  ApiClient(final this.configuration);

  void _handleResponse(final int statusCode, final String reasonPhrase, final ByteData body) {
    if (statusCode != 200) {
      var printBody = '';
      try {
        printBody = utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
      }
      finally {
        if (printBody.isEmpty) {
          printBody = reasonPhrase;
        }
      }
      throw ApiException(statusCode, printBody);
    }
  }

  Future<String> _getAuthToken() async {
    if (_authToken == null) {
      await _updateAuthToken();
    }

    return _authToken;
  }

  Future<void> _updateAuthToken() async {
    final url = configuration.baseUrl + '/connect/token';
    final data = 'grant_type=client_credentials&client_id=${configuration.appSid}&client_secret=${configuration.appKey}';
    final headers = {'Content-Type' : 'application/x-www-form-urlencoded'};
    final response = await http.post(url, headers: headers, body: data);
    if (response.statusCode == 400) {
      throw ApiException(response.statusCode, 'Invalid server credentials. Please check your AppKey and AppSid.');
    }
    else {
      _handleResponse(response.statusCode, response.reasonPhrase, ByteData.view(response.bodyBytes.buffer));
    }

    final json = jsonDecode(response.body);
    _authToken = '${json['token_type']} ${json['access_token']}';
  }

  String _stringifyBody(ByteData body) {
    try {
      return '\t' + utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
    }
    catch(ex) {
      var result = '\t';
      for (var i = 0; i < body.lengthInBytes; i++) {
        if (i != 0) {
          result += ', ';
          if (i % 16 == 0) {
            result += '\r\n\t';
          }
        }
        result += body.getUint8(body.offsetInBytes + i).toRadixString(16).padLeft(2, '0').toUpperCase();
      }
      return result;
    }
  }

  String applyQueryParams(String url, Map<String, String> queryParams) {
    if (queryParams.isEmpty) {
      return url;
    }

    var firstAppend = true;
    queryParams.forEach((key, value) {
      url = '${url}${firstAppend ? '?' : '&'}${key}=${Uri.encodeQueryComponent(value)}';
      firstAppend = false;
    });

    return url;
  }

  String serializeToString(final dynamic value) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      return jsonEncode(value.serialize());
    }
    else if (value is String) {
      return value;
    }
    else if (value is int) {
      return value.toString();
    }
    else if (value is bool) {
      return value ? 'true' : 'false';
    }
    else if (value is double) {
      return value.toString().replaceFirst(',', '.');
    }
    else {
      throw ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ByteData serializeBody(final dynamic value, {bool isJson = false}) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      var json = jsonEncode(value.serialize());
      return ByteData.view(utf8.encoder.convert(json).buffer);
    }
    else if (value is ByteData) {
      return value;
    }
    else if (value is String) {
      if (isJson) {
        return ByteData.view(utf8.encoder.convert('"${value}"').buffer);
      }
      else {
        return ByteData.view(utf8.encoder.convert(value).buffer);
      }
    }
    else if (value is int) {
      return ByteData.view(utf8.encoder.convert(value.toString()).buffer);
    }
    else if (value is bool) {
      return ByteData.view(utf8.encoder.convert(value ? 'true' : 'false').buffer);
    }
    else if (value is double) {
      return ByteData.view(utf8.encoder.convert(value.toString().replaceFirst(',', '.')).buffer);
    }
    else {
      throw ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ByteData serializeBodyParts(final List<ApiRequestPart> bodyParts, Map<String, String> headers) {
    ByteData body;
    if (bodyParts.length == 1) {
      body = bodyParts.first.data;
      headers['Content-Type'] = bodyParts.first.mimeType;
    } else if (bodyParts.length > 1) {
      var boundary = Uuid().v4();
      body = serializeMultipart(bodyParts, boundary);
      headers['Content-Type'] = 'multipart/form-data; boundary="${boundary}"';
    }

    return body;
  }

  ApiRequestPart serializeBatchPart(final ApiRequestData requestData) {
    var data = <Uint8List>[];
    var relativeUrl = requestData.url.substring( (configuration.getApiRootUrl() + '/words/').length );
    data.add(utf8.encoder.convert('${requestData.method} ${relativeUrl} \r\n'));

    if (requestData.headers != null) {
      requestData.headers.forEach((key, value) {
        data.add(utf8.encoder.convert('${key}: ${value}\r\n'));
      });
    }

    data.add(utf8.encoder.convert('\r\n'));
    if (requestData.body != null) {
      data.add(requestData.body.buffer.asUint8List(requestData.body.offsetInBytes, requestData.body.lengthInBytes));
    }

    return ApiRequestPart(toByteData(data), 'application/http; msgtype=request');
  }

  ByteData serializeMultipart(final List<ApiRequestPart> bodyParts, String boundary) {
    var needsClrf = false;
    var formBody = <Uint8List>[];
    for (final formParam in bodyParts) {
      if (needsClrf) {
        formBody.add(utf8.encoder.convert('\r\n'));
      }
      needsClrf = true;

      formBody.add(utf8.encoder.convert('--${boundary}\r\n'));
      formBody.add(utf8.encoder.convert('Content-Type: ${formParam.mimeType}\r\n'));
      formBody.add(utf8.encoder.convert('Content-Disposition: form-data'));

      if (formParam.name != null) {
        formBody.add(utf8.encoder.convert('; name="${formParam.name}"'));
      }

      formBody.add(utf8.encoder.convert('\r\n\r\n'));
      formBody.add(formParam.data.buffer.asUint8List(formParam.data.offsetInBytes, formParam.data.lengthInBytes));
    }
    formBody.add(utf8.encoder.convert('\r\n--${boundary}--\r\n'));
    return toByteData(formBody);
  }

  List<ByteData> deserializeMultipart(final ByteData data) {
    if (!data.compare(_starting, offset: 0)) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    var boundaryEndIndex = data.indexOf(_newline);
    if (boundaryEndIndex == null) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    var boundaryBytes = ByteData.sublistView(data, 0, boundaryEndIndex);
    var parts = data.split(boundaryBytes);
    if (parts.length < 2) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    if (!parts.last.compare(_starting, offset: 0)) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    parts.removeLast();
    return parts.map((part) {
      var headersEndIndex = part.indexOf(_2newline);
      if (headersEndIndex != null) {
        return ByteData.sublistView(part, headersEndIndex + _2newline.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
      }

      return ByteData.sublistView(part, _newline.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
    }).toList();
  }

  dynamic deserializeBatchPart(final RequestBase request, final ByteData partData) {
    var statusDataEndIndex = partData.indexOf(_newline);
    if (statusDataEndIndex == null) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    var statusData = ByteData.sublistView(partData, 0, statusDataEndIndex);
    var statusStr = utf8.decoder.convert(statusData.buffer.asUint8List(statusData.offsetInBytes, statusData.lengthInBytes));
    var statusStrParts = statusStr.split(' ');
    if (statusStrParts.length < 2) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    var statusCode = int.tryParse(statusStrParts[0]);
    if (statusCode == null) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    ByteData body;
    var headersEndIndex = partData.indexOf(_2newline);
    if (headersEndIndex != null) {
      body = ByteData.sublistView(partData, headersEndIndex + _2newline.lengthInBytes);
    }

    if (statusCode != 200) {
      String message;
      if (body != null) {
        message = utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
      }
      return ApiException(statusCode, message ?? statusStr);
    }

    return request.deserializeResponse(body);
  }

  ByteData toByteData(final List<Uint8List> bufferStream) {
    var wholeSize = 0;
    var fillIndex = 0;
    bufferStream.forEach((element) => wholeSize += element.buffer.lengthInBytes);
    var fullBuffer = Uint8List(wholeSize);
    bufferStream.forEach((element) {
      fullBuffer.setAll(fillIndex, element);
      fillIndex += element.lengthInBytes;
    });

    return ByteData.view(fullBuffer.buffer);
  }

  Future<dynamic> call(final RequestBase request) async {
    var requestData = request.createRequestData(this);
    var response = await _callWithChecks(requestData);
    if (response == null) {
      return null;
    }

    return request.deserializeResponse(response);
  }

  Future< List<dynamic> > callBatch(final List<RequestBase> requests) async {
    var bodyParts = requests
        .map((request) => request.createRequestData(this))
        .map((requestData) => serializeBatchPart(requestData))
        .toList();
    var boundary = Uuid().v4();
    var batchUrl = '${configuration.getApiRootUrl()}/words/batch';
    var batchHeaders = <String, String>{};
    var batchBody = serializeMultipart(bodyParts, boundary);
    batchHeaders['Content-Type'] = 'multipart/form-data; boundary="${boundary}"';

    var batchRequestData = ApiRequestData('PUT', batchUrl, batchHeaders, batchBody);
    var response = await _callWithChecks(batchRequestData);
    var responseParts = deserializeMultipart(response);
    if (responseParts.length != requests.length) {
      throw ApiException(400, 'Response and request parts mismatch.');
    }

    var result = List<dynamic>(requests.length);
    for (var i = 0; i < requests.length; i++) {
      result[i] = deserializeBatchPart(requests[i], responseParts[i]);
    }

    return result;
  }

  Future<ByteData> _callWithChecks(final ApiRequestData requestData) async {
    try {
      return await _callInternal(requestData);
    }
    on ApiException catch(ex) {
      if (ex.status_code == 401) {
        await _updateAuthToken();
        return await _callInternal(requestData);
      } else {
        rethrow;
      }
    }
  }

  Future<ByteData> _callInternal(final ApiRequestData requestData) async {
    if (configuration.debugMode == true) {
      var debugMessage = 'CALL BEGIN: ${requestData.method} ${requestData.url}\r\n';
      if (requestData.headers != null && requestData.headers.isNotEmpty) {
        debugMessage += 'REQUEST HEADERS:\r\n';
        requestData.headers.forEach((key, value) => debugMessage += '\t${key}: ${value}\r\n');
      }
      if (requestData.body != null) {
        debugMessage += 'REQUEST BODY:\r\n';
        debugMessage += _stringifyBody(requestData.body) + '\r\n';
      }
      print(debugMessage);
    }

    var httpRequest = http.Request(requestData.method, Uri.parse(requestData.url));
    httpRequest.headers['x-aspose-client'] = 'dart sdk';
    httpRequest.headers['x-aspose-client-version'] = '20.10';
    httpRequest.headers['Authorization'] = await _getAuthToken();
    if (requestData.headers != null) {
      httpRequest.headers.addAll(requestData.headers);
    }

    if (requestData.body != null) {
      httpRequest.bodyBytes = requestData.body.buffer.asUint8List(requestData.body.offsetInBytes, requestData.body.lengthInBytes);
    }

    var response = await httpRequest.send();
    var bytes = await response.stream.toBytes();
    var responseData = ByteData.view(bytes.buffer);

    if (configuration.debugMode == true) {
      var debugMessage = 'RESPONSE STATUS: ${response.statusCode} ${response.reasonPhrase}\r\n';
      if (response.headers != null && response.headers.isNotEmpty) {
        debugMessage += 'RESPONSE HEADERS:\r\n';
        response.headers.forEach((key, value) => debugMessage += '\t${key}: ${value}\r\n');
      }
      if (responseData.lengthInBytes > 0) {
        debugMessage += 'RESPONSE BODY:\r\n';
        debugMessage += _stringifyBody(responseData) + '\r\n';
      }
      debugMessage += 'CALL END: ${requestData.method} ${requestData.url}\r\n';
      print(debugMessage);
    }

    await _handleResponse(response.statusCode, response.reasonPhrase, responseData);
    return responseData;
  }
}