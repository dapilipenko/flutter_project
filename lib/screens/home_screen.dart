import 'package:flutter/material.dart';
import 'add_note_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> notes = [];

  void _addNote(String newNote) {
    setState(() {
      notes.add(newNote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мої нотатки'), centerTitle: true),
      body: notes.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.note_add, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Немає нотаток. Додайте першу!',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      notes[index],
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddNote(),
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

  void _navigateToAddNote() async {
    final newNote = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const AddNoteScreen()),
    );
    if (newNote != null && newNote.isNotEmpty) {
      _addNote(newNote);
    }
  }
}
