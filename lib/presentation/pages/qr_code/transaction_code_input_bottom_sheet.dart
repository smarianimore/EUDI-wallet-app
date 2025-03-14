import 'package:birex/presentation/components/components.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionCodeInputBottomSheet extends StatefulWidget {
  const TransactionCodeInputBottomSheet({super.key, this.codeLength, this.hint});

  final num? codeLength;
  final String? hint;

  @override
  State<TransactionCodeInputBottomSheet> createState() => _TransactionCodeInputBottomSheetState();
}

class _TransactionCodeInputBottomSheetState extends State<TransactionCodeInputBottomSheet> {
  late final TextEditingController _controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Codice di sicurezza',
      body: (context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _controller,
              validator: _validator,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: widget.hint,
                label: const Text('Inserisci codice'),
                alignLabelWithHint: true,
                counterText: '${_controller.text.length}/${widget.codeLength}',
              ),
            ),
            Dimensions.mediumSize.spacer(),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.pop(_controller.text);
                }
              },
              child: const Text('Conferma'),
            ),
          ],
        ),
      ),
    );
  }

  String? _validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Inserisci il codice di sicurezza';
    }
    return null;
  }
}
