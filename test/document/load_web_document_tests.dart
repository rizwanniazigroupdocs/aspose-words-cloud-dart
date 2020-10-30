/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="load_web_document_tests.dart">
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

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import '../test_context.dart';
import 'package:test/test.dart';

/// Example of how to load web document.
class LoadWebDocumentTests
{
  final TestContext context;

  LoadWebDocumentTests(final TestContext this.context) {
  }

  /// Test for loading web document.
  Future<void> testLoadWebDocument() async
  {
    var requestDataSaveOptions = new SaveOptionsData();
    requestDataSaveOptions.fileName = 'google.doc';
    requestDataSaveOptions.saveFormat = 'doc';
    requestDataSaveOptions.dmlEffectsRenderingMode = '1';
    requestDataSaveOptions.dmlRenderingMode = '1';
    requestDataSaveOptions.updateSdtContent = false;
    requestDataSaveOptions.zipOutput = false;

    var requestData = new LoadWebDocumentData();
    requestData.loadingDocumentUrl = 'http://google.com';
    requestData.saveOptions = requestDataSaveOptions;

    final request = new LoadWebDocumentRequest(
      requestData
    );

    var result = await this.context.getApi().loadWebDocument(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult.destDocument, isNotNull);
    expect('google.doc'.startsWith(result.saveResult.destDocument.href), isTrue);
  }
}
