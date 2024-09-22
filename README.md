<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

This package contains a widget which can be used to display a set of messages. One typical
example would be to display messages like:
  Waiting for connection...
  Got a connection.
  Sending data over the connection.
  Finished. Send 300k bytes of data.
  Connection closed.
In our opinion, this is better than a simple in-determinate progress bar which leaves 
the user wondering if the program is running or not!
## Features

The package contains an InheritedWidget, which can be injected into the widget tree and 
accessed by any widget in the subtree. Please see the attached example.
## Getting started

from the command prompt, please type in:  
> *flutter pub get logs_provider*

## Usage

```dart
  LogsProviderExample extends 
```

## Additional information

Please look at the attached code examples.

Please note that I have used an InheritedWidget instead of the Provider package. 
