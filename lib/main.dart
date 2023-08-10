import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/phone_bloc.dart';
import 'package:interview/bloc/phone_event.dart';
import 'package:interview/product/product_api.dart';
import 'package:interview/ui/product/product_search_screen.dart';

import 'di/injector.dart';

void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (BuildContext context) => PhoneBloc(api: injector.get<ProductApi>())..add(InitPhoneEvent()),
        child: const ProductSearchScreen(),
      ),
    );
  }
}
