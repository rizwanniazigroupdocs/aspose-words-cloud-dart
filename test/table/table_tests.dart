/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_tests.dart">
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

/// Example of how to work wtih table.
class TableTests
{
  final TestContext context;
  String remoteDataFolder;
  String localFile;

  TableTests(final this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Tables';
    localFile = 'DocumentElements/Tables/TablesGet.docx';
  }

  /// Test for getting tables.
  Future<void> testGetTables() async
  {
    final remoteFileName = 'TestGetTables.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTablesRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTables(request);
    expect(result.tables, isNotNull);
    expect(result.tables.tableLinkList, isNotNull);
    expect(result.tables.tableLinkList.length, 5);
    expect(result.tables.tableLinkList[0].nodeId, '0.0.1');
  }

  /// Test for getting tables without node path.
  Future<void> testGetTablesWithoutNodePath() async
  {
    final remoteFileName = 'TestGetTablesWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTablesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTables(request);
    expect(result.tables, isNotNull);
    expect(result.tables.tableLinkList, isNotNull);
    expect(result.tables.tableLinkList.length, 5);
    expect(result.tables.tableLinkList[0].nodeId, '0.0.1');
  }

  /// Test for getting table.
  Future<void> testGetTable() async
  {
    final remoteFileName = 'TestGetTable.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTable(request);
    expect(result.table, isNotNull);
    expect(result.table.tableRowList, isNotNull);
    expect(result.table.tableRowList.length, 1);
    expect(result.table.tableRowList[0].tableCellList, isNotNull);
    expect(result.table.tableRowList[0].tableCellList.length, 2);
  }

  /// Test for getting table without node path.
  Future<void> testGetTableWithoutNodePath() async
  {
    final remoteFileName = 'TestGetTableWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTable(request);
    expect(result.table, isNotNull);
    expect(result.table.tableRowList, isNotNull);
    expect(result.table.tableRowList.length, 1);
    expect(result.table.tableRowList[0].tableCellList, isNotNull);
    expect(result.table.tableRowList[0].tableCellList.length, 2);
  }

  /// Test for deleting table.
  Future<void> testDeleteTable() async
  {
    final remoteFileName = 'TestDeleteTable.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteTableRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteTable(request);
  }

  /// Test for deleting table without node path.
  Future<void> testDeleteTableWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteTableWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteTableRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    await context.getApi().deleteTable(request);
  }

  /// Test for adding table.
  Future<void> testInsertTable() async
  {
    final remoteFileName = 'TestInsertTable.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestTable = TableInsert();
    requestTable.columnsCount = 5;
    requestTable.rowsCount = 4;

    final request = InsertTableRequest(
      remoteFileName,
      requestTable,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertTable(request);
    expect(result.table, isNotNull);
    expect(result.table.tableRowList, isNotNull);
    expect(result.table.tableRowList.length, 4);
    expect(result.table.tableRowList[0].tableCellList, isNotNull);
    expect(result.table.tableRowList[0].tableCellList.length, 5);
  }

  /// Test for adding table without node path.
  Future<void> testInsertTableWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertTableWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestTable = TableInsert();
    requestTable.columnsCount = 5;
    requestTable.rowsCount = 4;

    final request = InsertTableRequest(
      remoteFileName,
      requestTable,
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertTable(request);
    expect(result.table, isNotNull);
    expect(result.table.tableRowList, isNotNull);
    expect(result.table.tableRowList.length, 4);
    expect(result.table.tableRowList[0].tableCellList, isNotNull);
    expect(result.table.tableRowList[0].tableCellList.length, 5);
  }

  /// Test for getting document properties.
  Future<void> testGetTableProperties() async
  {
    final remoteFileName = 'TestGetTableProperties.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTablePropertiesRequest(
      remoteFileName,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableProperties(request);
    expect(result.properties, isNotNull);
    expect(result.properties.styleName, 'Table Grid');
  }

  /// Test for getting document properties without node path.
  Future<void> testGetTablePropertiesWithoutNodePath() async
  {
    final remoteFileName = 'TestGetTablePropertiesWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTablePropertiesRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableProperties(request);
    expect(result.properties, isNotNull);
    expect(result.properties.styleName, 'Table Grid');
  }

  /// Test for updating table properties.
  Future<void> testUpdateTableProperties() async
  {
    final remoteFileName = 'TestUpdateTableProperties.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperties = TableProperties();
    requestProperties.alignment = TableProperties_AlignmentEnum.right;
    requestProperties.allowAutoFit = false;
    requestProperties.bidi = true;
    requestProperties.bottomPadding = 1;
    requestProperties.cellSpacing = 2.0;
    requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;

    final request = UpdateTablePropertiesRequest(
      remoteFileName,
      requestProperties,
      1,
      nodePath: '',
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateTableProperties(request);
    expect(result.properties, isNotNull);
    expect(result.properties.allowAutoFit, isFalse);
    expect(result.properties.bidi, isTrue);
    expect(result.properties.bottomPadding, 1.0);
    expect(result.properties.cellSpacing, 2.0);
  }

  /// Test for updating table properties without node path.
  Future<void> testUpdateTablePropertiesWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateTablePropertiesWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestProperties = TableProperties();
    requestProperties.alignment = TableProperties_AlignmentEnum.right;
    requestProperties.allowAutoFit = false;
    requestProperties.bidi = true;
    requestProperties.bottomPadding = 1.0;
    requestProperties.cellSpacing = 2.0;
    requestProperties.styleOptions = TableProperties_StyleOptionsEnum.columnBands;

    final request = UpdateTablePropertiesRequest(
      remoteFileName,
      requestProperties,
      1,
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateTableProperties(request);
    expect(result.properties, isNotNull);
    expect(result.properties.allowAutoFit, isFalse);
    expect(result.properties.bidi, isTrue);
    expect(result.properties.bottomPadding, 1.0);
    expect(result.properties.cellSpacing, 2.0);
  }

  /// Test for getting table row.
  Future<void> testGetTableRow() async
  {
    final remoteFileName = 'TestGetTableRow.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableRowRequest(
      remoteFileName,
      'tables/1',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableRow(request);
    expect(result.row, isNotNull);
    expect(result.row.tableCellList, isNotNull);
    expect(result.row.tableCellList.length, 2);
  }

  /// Test for deleting table row.
  Future<void> testDeleteTableRow() async
  {
    final remoteFileName = 'TestDeleteTableRow.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteTableRowRequest(
      remoteFileName,
      'tables/1',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteTableRow(request);
  }

  /// Test for adding row.
  Future<void> testInsertTableRow() async
  {
    final remoteFileName = 'TestInsertTableRow.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestRow = TableRowInsert();
    requestRow.columnsCount = 5;

    final request = InsertTableRowRequest(
      remoteFileName,
      requestRow,
      'sections/0/tables/2',
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertTableRow(request);
    expect(result.row, isNotNull);
    expect(result.row.tableCellList, isNotNull);
    expect(result.row.tableCellList.length, 5);
  }

  /// Test for getting row format.
  Future<void> testGetTableRowFormat() async
  {
    final remoteFileName = 'TestGetTableRowFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableRowFormatRequest(
      remoteFileName,
      'sections/0/tables/2',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableRowFormat(request);
    expect(result.rowFormat, isNotNull);
    expect(result.rowFormat.allowBreakAcrossPages, isTrue);
  }

  /// Test updating row format.
  Future<void> testUpdateTableRowFormat() async
  {
    final remoteFileName = 'TestUpdateTableRowFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFormat = TableRowFormat();
    requestFormat.allowBreakAcrossPages = true;
    requestFormat.headingFormat = true;
    requestFormat.height = 10.0;
    requestFormat.heightRule = TableRowFormat_HeightRuleEnum.exactly;

    final request = UpdateTableRowFormatRequest(
      remoteFileName,
      requestFormat,
      'sections/0/tables/2',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateTableRowFormat(request);
    expect(result.rowFormat, isNotNull);
    expect(result.rowFormat.allowBreakAcrossPages, isTrue);
    expect(result.rowFormat.headingFormat, isTrue);
    expect(result.rowFormat.height, 10.0);
  }

  /// Test for getting table cell.
  Future<void> testGetTableCell() async
  {
    final remoteFileName = 'TestGetTableCell.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableCellRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableCell(request);
    expect(result.cell, isNotNull);
    expect(result.cell.nodeId, '0.0.5.0.0');
  }

  /// Test for deleting cell.
  Future<void> testDeleteTableCell() async
  {
    final remoteFileName = 'TestDeleteTableCell.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteTableCellRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteTableCell(request);
  }

  /// Test for adding cell.
  Future<void> testInsertTableCell() async
  {
    final remoteFileName = 'TestInsertTableCell.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestCell = TableCellInsert();


    final request = InsertTableCellRequest(
      remoteFileName,
      requestCell,
      'sections/0/tables/2/rows/0',
      folder: remoteDataFolder
    );

    var result = await context.getApi().insertTableCell(request);
    expect(result.cell, isNotNull);
    expect(result.cell.nodeId, '0.0.5.0.3');
  }

  /// Test for getting cell format.
  Future<void> testGetTableCellFormat() async
  {
    final remoteFileName = 'TestGetTableCellFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetTableCellFormatRequest(
      remoteFileName,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().getTableCellFormat(request);
    expect(result.cellFormat, isNotNull);
    expect(result.cellFormat.wrapText, isTrue);
  }

  /// Test for updating cell format.
  Future<void> testUpdateTableCellFormat() async
  {
    final remoteFileName = 'TestUpdateTableCellFormat.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    var requestFormat = TableCellFormat();
    requestFormat.bottomPadding = 5.0;
    requestFormat.fitText = true;
    requestFormat.horizontalMerge = TableCellFormat_HorizontalMergeEnum.first;
    requestFormat.wrapText = true;

    final request = UpdateTableCellFormatRequest(
      remoteFileName,
      requestFormat,
      'sections/0/tables/2/rows/0',
      0,
      folder: remoteDataFolder
    );

    var result = await context.getApi().updateTableCellFormat(request);
    expect(result.cellFormat, isNotNull);
    expect(result.cellFormat.bottomPadding, 5.0);
    expect(result.cellFormat.fitText, isTrue);
    expect(result.cellFormat.wrapText, isTrue);
  }

  /// Test for table rendering.
  Future<void> testRenderTable() async
  {
    final remoteFileName = 'TestRenderTable.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderTableRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().renderTable(request);
  }

  /// Test for table rendering without node path.
  Future<void> testRenderTableWithoutNodePath() async
  {
    final remoteFileName = 'TestRenderTableWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderTableRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().renderTable(request);
  }
}
