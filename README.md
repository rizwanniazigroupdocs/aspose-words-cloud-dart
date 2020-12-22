![](https://img.shields.io/badge/api-v4.0-lightgrey) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/aspose-words-cloud/aspose-words-cloud-dart) [![GitHub license](https://img.shields.io/github/license/aspose-words-cloud/aspose-words-cloud-dart)](https://github.com/aspose-words-cloud/aspose-words-cloud-dart)
# Dart SDK for Word Documents Processing in the Cloud
This package contains Aspose.Words Cloud SDK for Dart (Compatible with [Flutter](https://flutter.dev/)). 
This SDK allows you to work with Aspose.Words Cloud REST APIs in your Dart applications quickly and easily, with zero initial cost.

[Aspose.Words Cloud](https://products.aspose.cloud/words/family "Aspose.Words Cloud")  
[API Reference](https://apireference.aspose.cloud/words/)  
## Document Processing Services in REST

- Convert between various document-related formats, including Word to PDF & vice versa.
- Mail merge and report generation in the Cloud.
- Split & merge Word documents.
- Access Word document metadata.
- Find and replace text.
- Add & remove watermarks and protection.
- Read & write access to Document Object Model.
- Get document information in JSON or XML representation.
- Convert an encrypted PDF document into Word document format.
- [Fetch statistical data](https://docs.aspose.cloud/display/wordscloud/Get+Document+Statistics) of a document.
- [Remove all macros](https://docs.aspose.cloud/display/wordscloud/Remove+all+Macros+from+Document) contained in a specific document.
- [Convert a document to desired file format](https://docs.aspose.cloud/display/wordscloud/Convert+Document+to+Destination+Format+with+Detailed+Settings+and+Save+Result+to+Storage) along with detailed settings.

Check out the [Developer's Guide](https://docs.aspose.cloud/display/wordscloud/Developer+Guide) to know more about Aspose Words Cloud REST API.


## Read & Write Document Formats

**Microsoft Word:** DOC, DOCX, RTF, DOT, DOTX, DOTM, FlatOPC (XML)
**OpenOffice:** ODT, OTT
**WordprocessingML:** XML
**Web:** HTML, MHTML, HtmlFixed
**Text:** TXT
**Fixed Layout:** PDF

## Save Document As

**Fixed Layout:** PDF/A, XPS, OpenXPS, PS
**Images:** JPEG, PNG, BMP, SVG, TIFF, EMF
**Others:** PCL

## How to use the SDK?

The complete source code is available in this repository folder. You can either directly use it in your project via source code or add this project as dart package (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites

To use Aspose Words for Cloud Dart SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

## Installation & Usage
Add this dependency to your *pubspec.yaml*:

## Dependencies
- referenced packages (see [here](pubspec.yaml) for more details)

```yaml
dependencies:
  aspose_words_cloud: 20.11.0
```

## Getting Started

```dart
// Import dependencies
import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'dart:convert';
import 'dart:io';

// Configure words api client
var configuration = Configuration('ClientId', 'ClientSecret');
var wordsApi = WordsApi(configuration);

// Upload file to cloud
var localFileContent = await (File('./test_data/Common/test_doc.docx').readAsBytes());
var uploadRequest = UploadFileRequest(ByteData.view(localFileContent.buffer), 'fileStoredInCloud.docx');
await wordsApi.uploadFile(uploadRequest);

// Save file as pdf in cloud
var saveOptionsData = SaveOptionsData()
  ..saveFormat = 'pdf'
  ..fileName = 'destStoredInCloud.pdf';
var saveAsRequest = SaveAsRequest('fileStoredInCloud.docx', saveOptionsData);
await wordsApi.saveAs(saveAsRequest);
```

[Test](test) contain various examples of using the SDK.

## Aspose.Words Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Dart|Go|
|---|---|---|---|---|---|---|--|--|
| [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-dotnet) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-java) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-php) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-python) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-ruby)  | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-node) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-android) | [GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-dart) |[GitHub](https://github.com/aspose-words-cloud/aspose-words-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.Words-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words-cloud) | [Composer](https://packagist.org/packages/aspose-cloud/aspose-words-cloud) | [PIP](https://pypi.org/project/aspose.words-cloud/) | [GEM](https://rubygems.org/gems/aspose_words_cloud)  | [NPM](https://www.npmjs.com/package/asposewordscloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words-cloud) | [Pub.Dev](https://pub.dev/packages/aspose_words_cloud) | [Go.Dev](https://pkg.go.dev/github.com/aspose-words-cloud/aspose-words-cloud-go/) | 

[Product Page](https://products.aspose.cloud/words/dart) | [Documentation](https://docs.aspose.cloud/display/wordscloud/Home) | [API Reference](https://apireference.aspose.cloud/words/) | [Code Samples](https://github.com/aspose-words-cloud/aspose-words-cloud-dotnet) | [Blog](https://blog.aspose.cloud/category/words/) | [Free Support](https://forum.aspose.cloud/c/words) | [Free Trial](https://dashboard.aspose.cloud/#/apps)
