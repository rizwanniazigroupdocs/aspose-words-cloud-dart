/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="append_document_tests.dart">
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

/// Example of how to append document.
class AppendDocumentTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  AppendDocumentTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/AppendDocument';
    localFile = 'Common/test_multi_pages.docx';
  }

  void runAll() async {
    await test('AppendDocument.AppendDocument', () async => await this.testAppendDocument());
  }

  /// Test for appending document.
  void testAppendDocument() async
  {
    final String remoteFileName = 'TestAppendDocument.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestDocumentListDocumentEntries0 = new DocumentEntry();
    requestDocumentListDocumentEntries0.href = remoteDataFolder + '/' + remoteFileName;
    requestDocumentListDocumentEntries0.importFormatMode = 'KeepSourceFormatting';

    var requestDocumentListDocumentEntries = [
      requestDocumentListDocumentEntries0];

    var requestDocumentList = new DocumentEntryList();
    requestDocumentList.documentEntries = requestDocumentListDocumentEntries;

    final request = new AppendDocumentRequest(
      remoteFileName,
      requestDocumentList,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().appendDocument(request);
  }
}
