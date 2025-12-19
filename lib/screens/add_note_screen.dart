import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  int _charCount = 0;
  static const int maxChars = 200;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _charCount = _controller.text.length;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Нова нотатка'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              focusNode: _focusNode,
              maxLength: maxChars,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Введіть текст нотатки (макс. $maxChars символів)',
                border: const OutlineInputBorder(),
                helperText: 'Будьте лаконічними!',
              ),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Символів: $_charCount / $maxChars',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _charCount > 0 && _charCount <= maxChars
                  ? () => Navigator.pop(context, _controller.text)
                  : null,
              child: const Text('Зберегти'),
            ),
          ],
        ),
      ),
    );
  }
}
