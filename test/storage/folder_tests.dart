/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="folder_tests.dart">
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

/// Example of how to work with folders.
class FolderTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  FolderTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/Storage';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for create folder.
  void testCreateFolder() async
  {

    final request = new CreateFolderRequest(
      remoteDataFolder + '/TestCreateFolder'
    );

    await this.context.getApi().createFolder(request);
  }

  /// Test for delete folder.
  void testDeleteFolder() async
  {
    final String testDeleteFolder = remoteDataFolder + '/TestDeleteFolder';
    await this.context.uploadFile(localFile, testDeleteFolder + '/TestDeleteFolder.docx');

    final request = new DeleteFolderRequest(
      testDeleteFolder
    );

    await this.context.getApi().deleteFolder(request);
  }

  /// Test for get file list of folder.
  void testGetFilesList() async
  {

    final request = new GetFilesListRequest(
      remoteDataFolder
    );

    var result = await this.context.getApi().getFilesList(request);
  }

  /// Test for copy folder.
  void testCopyFolder() async
  {
    final String folderToCopy = remoteDataFolder + '/TestCopyFolder';
    await this.context.uploadFile(localFile, folderToCopy + 'Src/TestCopyFolderSrc.docx');

    final request = new CopyFolderRequest(
      folderToCopy + 'Dest',
      folderToCopy + 'Src'
    );

    await this.context.getApi().copyFolder(request);
  }

  /// Test for move folder.
  void testMoveFolder() async
  {
    await this.context.uploadFile(localFile, remoteDataFolder + '/TestMoveFolderSrc/TestMoveFolderSrc.docx');

    final request = new MoveFolderRequest(
      this.context.baseTestOutPath + '/TestMoveFolderDest_' + this.context.createRandomGuid(),
      remoteDataFolder + '/TestMoveFolderSrc'
    );

    await this.context.getApi().moveFolder(request);
  }
}
