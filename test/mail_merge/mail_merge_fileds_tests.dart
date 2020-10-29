/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="mail_merge_fileds_tests.dart">
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

/// Example of how to work with merge fields.
class MailMergeFiledsTests
{
  final TestContext context;
  String remoteDataFolder;
  String mailMergeFolder;

  MailMergeFiledsTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentActions/MailMerge';
    mailMergeFolder = 'DocumentActions/MailMerge';
  }

  /// Test for putting new fields.
  Future<void> testGetDocumentFieldNamesOnline() async
  {
    final String localDocumentFile = 'SampleExecuteTemplate.docx';

    final request = new GetDocumentFieldNamesOnlineRequest(
      await this.context.loadBinaryFile(mailMergeFolder + '/' + localDocumentFile),
      useNonMergeFields: true
    );

    var result = await this.context.getApi().getDocumentFieldNamesOnline(request);
    expect(result.fieldNames, isNotNull);
    expect(result.fieldNames.names, isNotNull);
    expect(result.fieldNames.names.length, 15);
    expect(result.fieldNames.names[0], 'TableStart:Order');
  }

  /// Test for getting mailmerge fields.
  Future<void> testGetDocumentFieldNames() async
  {
    final String remoteFileName = 'TestGetDocumentFieldNames.docx';
    await this.context.uploadFile('Common/test_multi_pages.docx', remoteDataFolder + '/' + remoteFileName);

    final request = new GetDocumentFieldNamesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getDocumentFieldNames(request);
    expect(result.fieldNames, isNotNull);
    expect(result.fieldNames.names, isNotNull);
    expect(result.fieldNames.names.length, 0);
  }
}
