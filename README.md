# Aspose.Words Cloud SDK for Dart (Compatible with [Flutter](https://flutter.dev/))
This repository contains Aspose.Words Cloud SDK for Dart source code. This SDK allows you to work with Aspose.Words Cloud REST APIs in your Dart applications quickly and easily, with zero initial cost.

[Aspose.Words Cloud](https://products.aspose.cloud/words/family "Aspose.Words Cloud")  
[API Reference](https://apireference.aspose.cloud/words/)  

## Key Features
* Conversion between various document-related formats (20+ formats supported), including PDF<->Word conversion
* Mail merge and reports generation 
* Splitting Word documents
* Accessing Word document metadata and statistics
* Find and replace
* Watermarks and protection
* Full read & write access to Document Object Model, including sections, paragraphs, text, images, tables, headers/footers and many others

## Enhancements in Version 20.9

- Added Batch API feature


## Enhancements in Version 20.8

- Added new api method (PUT '/words/{name}/compatibility/optimize') which is allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word
- Added 'ApplyBaseDocumentHeadersAndFootersToAppendingDocuments' option to 'DocumentEntryList' for AppendDocument API
- WithoutNodePath methods have been removed, pass null values instead


## Enhancements in Version 20.7

- Added 'Markdown' save format
- Added endpoint to update paragraph format without node path (PUT '/words/{name}/paragraphs/{index}/format')


## Enhancements in Version 20.6

- Added new methods:
  - DeleteAllParagraphTabStopsWithoutNodePath
  - DeleteParagraphTabStopWithoutNodePath
  - GetParagraphTabStopsWithoutNodePath
  - InsertOrUpdateParagraphTabStopWithoutNodePath
  - InsertParagraphWithoutNodePath
  - UpdateParagraphFormatWithoutNodePath
  - UpdateParagraphListFormatWithoutNodePath
  - DeleteParagraphListFormatWithoutNodePath
- DrawingObject related methods have been changed body content. Special request classes are introduced instead of strings.
- InsertOrUpdateParagraphTabStop, DeleteParagraphTabStop methods have been changed parameter order
- OoxmlSaveOptionsData.CompressionLevel property has been added


## Enhancements in Version 20.5

- Added methods to work with Word document lists
  - GetLists
  - GetList
  - InsertList
  - UpdateList
  - UpdateListLevel
- Added methods to work with styles
  - GetStyles
  - UpdateStyle
  - InsertStyle
  - CopyStyle
  - GetStyleFromDocumentElement
  - ApplyStyleToDocumentElement
- Added methods to work with paragraph list format
  - GetParagraphListFormat
  - GetParagraphListFormatWithoutNodePath
  - UpdateParagraphListFormat
  - DeleteParagraphListFormat
- Added methods to work with paragraph tab stops
  - GetParagraphTabStops
  - InsertOrUpdateParagraphTabStop
  - DeleteAllParagraphTabStops
  - DeleteParagraphTabStop
- Added methods to build reports
  - BuildReport
  - BuildReportOnline
- Added Shading property to ParagraphFormat


## How to use the SDK?

The complete source code is available in this repository folder. You can either directly use it in your project via source code or add this project as dart package (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites

To use Aspose Words for Cloud Dart SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

## Installation & Usage
Add this dependency to your *pubspec.yaml*:

```yaml
dependencies:
  aspose_words_cloud: 20.9.0
```

## Getting Started

```dart
import 'dart:io';
import 'dart:typed_data';
import 'package:aspose_words_cloud/aspose_words_cloud.dart' as aspose_words_cloud;

void main() async {
  // Configure words api client
  var configuration = new aspose_words_cloud.Configuration('AppKey', 'AppSid');
  var wordsApi = new aspose_words_cloud.WordsApi(configuration);

  // Upload file to cloud
  var localFileContent = await (new File('fileStoredLocal.docx').readAsBytes());
  var uploadRequest = new aspose_words_cloud.UploadFileRequest(ByteData.view(localFileContent.buffer), 'fileStoredInCloud.docx');
  await wordsApi.uploadFile(uploadRequest);

  // Save file as pdf in cloud
  var saveOptionsData = new aspose_words_cloud.SaveOptionsData()
    ..saveFormat = "pdf"
    ..fileName = "destStoredInCloud.pdf";
  var saveAsRequest = new aspose_words_cloud.SaveAsRequest("fileStoredInCloud.docx", saveOptionsData);
  wordsApi.saveAs(saveAsRequest);
}
```

[Test](test) contain various examples of using the SDK.

## Dependencies
- referenced packages (see [here](pubspec.yaml) for more details)

## Licensing

All Aspose.Words Cloud SDKs, helper scripts and templates are licensed under [MIT License](https://github.com/aspose-words-cloud/aspose-words-cloud-dart/blob/master/LICENSE). 

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/words).

## Resources

[Website](https://www.aspose.cloud/)  
[Product Home](https://products.aspose.cloud/words/family)  
[API Reference](https://apireference.aspose.cloud/words/)  
[Documentation](https://docs.aspose.cloud/display/wordscloud/Home)  
[Blog](https://blog.aspose.cloud/category/words/)  

## Other languages
We generate our SDKs in different languages so you may check if yours is available in our [list](https://github.com/aspose-words-cloud).

If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/words/curl).
