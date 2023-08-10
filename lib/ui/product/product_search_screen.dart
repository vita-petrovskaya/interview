import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/phone_bloc.dart';
import 'package:interview/bloc/phone_state.dart';
import 'package:interview/model/product.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneBloc, PhoneState>(
      builder: (context, state) {
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
            _buildResults(state.list),
          ],
        ),
      );
    }
    );
  }

  Widget _buildResults(List<Product> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(list.length, (index) => Text(list[index].title)),
    );
  }
}
