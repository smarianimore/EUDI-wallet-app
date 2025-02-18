import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    required this.title,
    this.message,
    super.key,
  });

  final String title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class NetworkErrorDialog extends StatelessWidget {
  const NetworkErrorDialog({required this.dioError, super.key});
  final DioException dioError;

  String _getRequestInfo(RequestOptions? requestOptions) {
    if (requestOptions == null) {
      return 'Request: null';
    }
    return 'Request:\n'
        '- Method: ${requestOptions.method}\n'
        '- URL: ${requestOptions.uri}\n'
        '- Headers: ${requestOptions.headers}\n'
        '- Data: ${requestOptions.data}';
  }

  String _getResponseInfo(Response<dynamic>? response) {
    if (response == null) {
      return 'Response: null';
    }

    return 'Response:\n'
        '- Status Code: ${response.statusCode}\n'
        '- Headers: ${response.headers}\n'
        '- Data: ${response.data}';
  }

  String get composedText {
    return 'Request: ${_getRequestInfo(dioError.requestOptions)}\n\n'
        'Response: ${_getResponseInfo(dioError.response)}';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Network Error'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Important for fitting content
          children: [
            SelectableText(composedText),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
        TextButton(
          onPressed: () => Share.share(composedText),
          child: const Text('Copia'),
        ),
        TextButton(
          onPressed: () => Share.share(dioError.renderCurlRepresentation),
          child: const Text('Copia cURL'),
        ),
      ],
    );
  }
}

extension on DioException {
  String get renderCurlRepresentation {
    return _cURLRepresentation(requestOptions);
  }

  String _cURLRepresentation(RequestOptions options) {
    final components = <String>['curl -i'];
    if (options.method.toUpperCase() != 'GET') {
      components.add('-X ${options.method}');
    }

    options.headers.forEach((k, v) {
      if (k != 'Cookie') {
        components.add('-H "$k: $v"');
      }
    });

    if (options.data != null) {
      // FormData can't be JSON-serialized, so keep only their fields attributes
      if (options.data is FormData) {
        options.data = Map.fromEntries((options.data as FormData).fields);
      }

      final data = json.encode(options.data).replaceAll('"', r'\"');
      components.add('-d "$data"');
    }

    components.add('"${options.uri}"');

    return components.join(' \\\n\t');
  }
}
