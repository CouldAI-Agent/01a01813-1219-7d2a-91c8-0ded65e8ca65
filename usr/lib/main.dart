import 'package:flutter/material.dart';

void main() {
  runApp(const NativeVideoEditorApp());
}

class NativeVideoEditorApp extends StatelessWidget {
  const NativeVideoEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Native Video Editor',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.blueAccent,
          background: Color(0xFF1E1E1E),
          surface: Color(0xFF2D2D2D),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainEditorScreen(),
      },
    );
  }
}

class MainEditorScreen extends StatelessWidget {
  const MainEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Editor (Offline)'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.video_library, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              'No Video Selected',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement native file picker
              },
              icon: const Icon(Icons.folder_open),
              label: const Text('OPEN VIDEO'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
