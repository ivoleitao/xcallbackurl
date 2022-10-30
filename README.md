# xcallbackurl

[![Build Status](https://github.com/ivoleitao/xcallbackurl/actions/workflows/dart-ci.yml/badge.svg)](https://github.com/ivoleitao/xcallbackurl/actions/workflows/dart-ci.yml)
[![Pub Package](https://img.shields.io/pub/v/xcallbackurl.svg?style=flat-square)](https://pub.dartlang.org/packages/xcallbackurl)
[![Coverage Status](https://codecov.io/gh/ivoleitao/xcallbackurl/branch/master/graph/badge.svg?token=VusBJYgahl)](https://codecov.io/gh/ivoleitao/xcallbackurl)
[![Package Documentation](https://img.shields.io/badge/doc-xcallbackurl-blue.svg)](https://www.dartdocs.org/documentation/xcallbackurl/latest)
[![Github Stars](https://img.shields.io/github/stars/ivoleitao/xcallbackurl.svg)](https://github.com/ivoleitao/xcallbackurl)
[![GitHub License](https://img.shields.io/badge/license-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## Overview

## Features

## Supported app schemes

|Package|Pub|Description|
|-------|---|-----------|
|[xcallbackurl_bear](https://github.com/ivoleitao/xcallbackurl/tree/develop/packages/xcallbackurl_bear)|[![Pub](https://img.shields.io/pub/v/xcallbackurl_bear.svg?style=flat-square)](https://pub.dartlang.org/packages/xcallbackurl_bear)|A [bear](https://bear.app/) X-callback-url [scheme](https://bear.app/faq/X-callback-url%20Scheme%20documentation/) implementation|

## Getting Started

Select one of the supported app scheme libraries and add the base and app packages to your `pubspec.yaml` replacing x.x.x and y.y.y with the latest version of both. The example below uses the `xcallbackurl_bear` package which provides [bear](https://bear.app/) X-callback-url scheme support:

```dart
dependencies:
    xcallbackurl: ^x.x.x
    xcallbackurl_bear: ^y.y.y
```

Run the following command to install dependencies:

```dart
dart pub get
```

Finally, to start developing import the api and the selected storage implementation. In the example bellow the selected storage implementation is `xcallbackurl_memory` thus we import the `xcallbackurl_api`and the `xcallbackurl_memory` libraries:

```dart
import 'package:xcallbackurl/xcallbackurl.dart';
import 'package:xcallbackurl/xcallbackurl_bear.dart';
// In a more general sense 'package:xcallbackurl/xcallbackurl_xxx.dart' where xxx is the name of the
// app schemes, `bear` for example
```

## Usage


```dart
import 'package:xcallbackurl/xcallbackurl_api.dart';
import 'package:xcallbackurl_file/xcallbackurl_file.dart';
```
## Contributing

Contributions are always welcome!

If you would like to contribute with other parts of the API, feel free to make a Github [pull request](https://github.com/ivoleitao/xcallbackurl/pulls) as I'm always looking for contributions for:
* Tests
* Documentation
* New APIs

See [CONTRIBUTING.md](https://github.com/ivoleitao/xcallbackurl/blob/develop/CONTRIBUTING.md) for ways to get started.

## Features and Bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/ivoleitao/xcallbackurl/issues/new

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/ivoleitao/xcallbackurl/blob/develop/LICENSE) file for details