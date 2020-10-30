/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_properties_tests.dart">
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

/// Example of how to get document properties.
class DocumentPropertiesTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  DocumentPropertiesTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/DocumentProperties';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting document properties.
  Future<void> testGetDocumentProperties() async
  {
    final remoteFileName = 'TestGetDocumentProperties.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentPropertiesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentProperties(request);
  }

  /// A test for GetDocumentProperty.
  Future<void> testGetDocumentProperty() async
  {
    final remoteFileName = 'TestGetDocumentProperty.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentPropertyRequest(
      remoteFileName,
      'Author',
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentProperty(request);
  }

  /// Test for deleting document property.
  Future<void> testDeleteDocumentProperty() async
  {
    final remoteFileName = 'TestDeleteDocumentProperty.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteDocumentPropertyRequest(
      remoteFileName,
      'testProp',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteDocumentProperty(request);
  }

  /// Test for updating document property.
  Future<void> testUpdateDocumentProperty() async
  {
    final remoteFileName = 'TestUpdateDocumentProperty.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperty = DocumentPropertyCreateOrUpdate();
    requestProperty.value = 'Imran Anwar';

    final request = CreateOrUpdateDocumentPropertyRequest(
      remoteFileName,
      'AsposeAuthor',
      requestProperty,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().createOrUpdateDocumentProperty(request);
  }
}
