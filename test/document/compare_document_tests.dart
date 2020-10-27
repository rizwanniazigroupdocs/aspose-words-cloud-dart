/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_document_tests.dart">
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

/// Example of document comparison.
class CompareDocumentTests
{
  final TestContext context;
  String remoteFolder;
  String localFolder;

  CompareDocumentTests(final TestContext this.context) {
    remoteFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/CompareDocument';
    localFolder = 'DocumentActions/CompareDocument';
  }

  /// Test for document comparison.
  void testCompareDocument() async
  {
    final String localName1 = 'compareTestDoc1.doc';
    final String localName2 = 'compareTestDoc2.doc';
    final String remoteName1 = 'TestCompareDocument1.doc';
    final String remoteName2 = 'TestCompareDocument2.doc';
    await this.context.uploadFile(localFolder + '/' + localName1, remoteFolder + '/' + remoteName1);

    await this.context.uploadFile(localFolder + '/' + localName2, remoteFolder + '/' + remoteName2);
    var requestCompareData = new CompareData();
    requestCompareData.author = 'author';
    requestCompareData.comparingWithDocument = remoteFolder + '/' + remoteName2;
    requestCompareData.dateTime = new DateTime(2015, 10, 26, 0, 0, 0);

    final request = new CompareDocumentRequest(
      remoteName1,
      requestCompareData,
      folder: remoteFolder,
      destFileName: this.context.baseTestOutPath + '/TestCompareDocumentOut.doc'
    );

    var result = await this.context.getApi().compareDocument(request);
  }
}
