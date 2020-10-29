/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="execute_mail_merge_tests.dart">
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

/// Example of how to perform mail merge.
class ExecuteMailMergeTests
{
  final TestContext context;
  String remoteDataFolder;
  String mailMergeFolder;

  ExecuteMailMergeTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/MailMerge';
    mailMergeFolder = 'DocumentActions/MailMerge';
  }

  /// Test for executing mail merge online.
  Future<void> testExecuteMailMergeOnline() async
  {
    final localDocumentFile = 'SampleExecuteTemplate.docx';
    final localDataFile = 'SampleExecuteTemplateData.txt';

    final request = ExecuteMailMergeOnlineRequest(
      await context.loadBinaryFile(mailMergeFolder + '/' + localDocumentFile),
      await context.loadBinaryFile(mailMergeFolder + '/' + localDataFile)
    );

    await context.getApi().executeMailMergeOnline(request);
  }

  /// Test for executing mail merge.
  Future<void> testExecuteMailMerge() async
  {
    final localDocumentFile = 'SampleExecuteTemplate.docx';
    final remoteFileName = 'TestExecuteMailMerge.docx';
    final localDataFile = await context.loadTextFile(mailMergeFolder + '/SampleMailMergeTemplateData.txt');
    await context.uploadFile(mailMergeFolder + '/' + localDocumentFile, remoteDataFolder + '/' + remoteFileName);

    final request = ExecuteMailMergeRequest(
      remoteFileName,
      data: localDataFile,
      folder: remoteDataFolder,
      withRegions: false,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().executeMailMerge(request);
  }
}
