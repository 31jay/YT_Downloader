import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  // Simulated search function
  void _searchVideos() {
    final query = _searchController.text;

    // Check if the search query is not empty
    if (query.isNotEmpty) {
      // For now, just print the search query in the console
      print('Searching for: $query');
      // Here, you could add logic to call a backend API and fetch results
    } else {
      // Show a message if the search query is empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a search term')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Downloader'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Videos',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: _searchVideos,
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
