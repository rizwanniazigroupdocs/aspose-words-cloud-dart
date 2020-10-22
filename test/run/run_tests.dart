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
import '../test_context.dart';
import 'package:test/test.dart';

/// Example of how to work with runs.
class RunTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  RunTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Runs';
    localFile = 'DocumentElements/Runs/Run.doc';
  }

  void runAll() async {
    await test('Run.UpdateRun', () async => await this.testUpdateRun());
    await test('Run.InsertRun', () async => await this.testInsertRun());
    await test('Run.DeleteRun', () async => await this.testDeleteRun());
  }

  /// Test for updating run.
  void testUpdateRun() async
  {
    final String remoteFileName = 'TestUpdateRun.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRun = new RunUpdate();
    requestRun.text = 'run with text';

    final request = new UpdateRunRequest(
      remoteFileName,
      requestRun,
      'paragraphs/1',
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateRun(request);
  }

  /// Test for adding run.
  void testInsertRun() async
  {
    final String remoteFileName = 'TestInsertRun.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRun = new RunInsert();
    requestRun.text = 'run with text';

    final request = new InsertRunRequest(
      remoteFileName,
      'paragraphs/1',
      requestRun,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertRun(request);
  }

  /// Test for deleting run.
  void testDeleteRun() async
  {
    final String remoteFileName = 'TestDeleteRun.docx';
    await this.context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteRunRequest(
      remoteFileName,
      'paragraphs/1',
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteRun(request);
  }
}
