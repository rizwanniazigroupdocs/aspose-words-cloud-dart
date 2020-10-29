/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="field_tests.dart">
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

/// Example of how to work with field.
class FieldTests
{
  final TestContext context;
  String remoteDataFolder;
  String textFolder;
  String fieldFolder;

  FieldTests(final TestContext this.context) {
    remoteDataFolder = this.context.remoteBaseTestDataFolder + '/DocumentElements/Fields';
    textFolder = 'DocumentElements/Text';
    fieldFolder = 'DocumentElements/Fields';
  }

  /// Test for getting fields.
  Future<void> testGetFields() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestGetFields.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new GetFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFields(request);
    expect(result.fields, isNotNull);
    expect(result.fields.list, isNotNull);
    expect(result.fields.list.length, 1);
    expect(result.fields.list[0].result, '1');
  }

  /// Test for getting fields without node path.
  Future<void> testGetFieldsWithoutNodePath() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestGetFieldsWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new GetFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getFields(request);
    expect(result.fields, isNotNull);
    expect(result.fields.list, isNotNull);
    expect(result.fields.list.length, 1);
    expect(result.fields.list[0].result, '1');
  }

  /// Test for getting field by index.
  Future<void> testGetField() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestGetField.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new GetFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getField(request);
    expect(result.field, isNotNull);
    expect(result.field.result, '1');
  }

  /// Test for getting field by index without node path.
  Future<void> testGetFieldWithoutNodePath() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestGetFieldWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new GetFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().getField(request);
    expect(result.field, isNotNull);
    expect(result.field.result, '1');
  }

  /// Test for putting field.
  Future<void> testInsertField() async
  {
    final String localFileName = 'SampleWordDocument.docx';
    final String remoteFileName = 'TestInsertField.docx';
    await this.context.uploadFile(textFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    var requestField = new FieldInsert();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = new InsertFieldRequest(
      remoteFileName,
      requestField,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertField(request);
    expect(result.field, isNotNull);
    expect(result.field.fieldCode, '{ NUMPAGES }');
    expect(result.field.nodeId, '0.0.0.1');
  }

  /// Test for putting field without node path.
  Future<void> testInsertFieldWithoutNodePath() async
  {
    final String localFileName = 'SampleWordDocument.docx';
    final String remoteFileName = 'TestInsertFieldWithoutNodePath.docx';
    await this.context.uploadFile(textFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    var requestField = new FieldInsert();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = new InsertFieldRequest(
      remoteFileName,
      requestField,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().insertField(request);
    expect(result.field, isNotNull);
    expect(result.field.fieldCode, '{ NUMPAGES }');
    expect(result.field.nodeId, '5.0.22.0');
  }

  /// Test for posting field.
  Future<void> testUpdateField() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestUpdateField.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    var requestField = new FieldUpdate();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = new UpdateFieldRequest(
      remoteFileName,
      requestField,
      0,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateField(request);
    expect(result.field, isNotNull);
    expect(result.field.fieldCode, '{ NUMPAGES }');
    expect(result.field.nodeId, '0.0.0.0');
  }

  /// Test for inserting page numbers field.
  Future<void> testInsertPageNumbers() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestInsertPageNumbers.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    var requestPageNumber = new PageNumber();
    requestPageNumber.alignment = 'center';
    requestPageNumber.format = '{PAGE} of {NUMPAGES}';

    final request = new InsertPageNumbersRequest(
      remoteFileName,
      requestPageNumber,
      folder: remoteDataFolder,
      destFileName: this.context.baseTestOutPath + '/' + remoteFileName
    );

    var result = await this.context.getApi().insertPageNumbers(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'TestInsertPageNumbers.docx');
  }

  /// Test for deleting field.
  Future<void> testDeleteField() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestDeleteField.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteField(request);
  }

  /// Test for deleting field without node path.
  Future<void> testDeleteFieldWithoutNodePath() async
  {
    final String localFileName = 'GetField.docx';
    final String remoteFileName = 'TestDeleteFieldWithoutNodePath.docx';
    await this.context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteField(request);
  }

  /// Test for deleting paragraph fields.
  Future<void> testDeleteParagraphFields() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteParagraphFields.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'paragraphs/0',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for deleting paragraph fields without node path.
  Future<void> testDeleteParagraphFieldsWithoutNodePath() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteParagraphFieldsWithoutNodePath.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for deleting section fields.
  Future<void> testDeleteSectionFields() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteSectionFields.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for deleting section fields without node path.
  Future<void> testDeleteSectionFieldsWithoutNodePath() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteSectionFieldsWithoutNodePath.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for deleting paragraph fields in section.
  Future<void> testDeleteSectionParagraphFields() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteSectionParagraphFields.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for deleting fields.
  Future<void> testDeleteDocumentFields() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestDeleteSectionParagraphFields.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new DeleteFieldsRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    await this.context.getApi().deleteFields(request);
  }

  /// Test for posting updated fields.
  Future<void> testUpdateDocumentFields() async
  {
    final String localFileName = 'test_multi_pages.docx';
    final String remoteFileName = 'TestUpdateDocumentFields.docx';
    await this.context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = new UpdateFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await this.context.getApi().updateFields(request);
    expect(result.document, isNotNull);
    expect(result.document.fileName, 'TestUpdateDocumentFields.docx');
  }
}
