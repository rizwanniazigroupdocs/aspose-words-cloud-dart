/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="run_tests.dart">
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
import 'package:test/test.dart';

import '../test_context.dart';

/// Example of how to work with runs.
class RunTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  RunTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Runs';
    localFile = 'DocumentElements/Runs/Run.doc';
  }

  /// Test for updating run.
  Future<void> testUpdateRun() async
  {
    final remoteFileName = 'TestUpdateRun.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRun = RunUpdate();
    requestRun.text = 'run with text';

    final request = UpdateRunRequest(
      remoteFileName,
      requestRun,
      'paragraphs/1',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateRun(request);
    expect(result.run, isNotNull);
    expect(result.run.text, 'run with text');
  }

  /// Test for adding run.
  Future<void> testInsertRun() async
  {
    final remoteFileName = 'TestInsertRun.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRun = RunInsert();
    requestRun.text = 'run with text';

    final request = InsertRunRequest(
      remoteFileName,
      'paragraphs/1',
      requestRun,
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertRun(request);
    expect(result.run, isNotNull);
    expect(result.run.text, 'run with text');
    expect(result.run.nodeId, '0.0.1.3');
  }

  /// Test for deleting run.
  Future<void> testDeleteRun() async
  {
    final remoteFileName = 'TestDeleteRun.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteRunRequest(
      remoteFileName,
      'paragraphs/1',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteRun(request);
  }
}
