import 'package:flutter/material.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Products search"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text("Search for products here"),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              label: Text('Search'),
              border: OutlineInputBorder(),
            ),
            onSubmitted: (text) {
              print(text);
            },
          ),
          SizedBox(height: 32.0),
          Divider(),
          _buildResults(),
        ],
      ),
    );
  }

  Widget _buildResults() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Foo'),
        Text('Bar'),
        Text('Baz'),
      ],
    );
  }
}
