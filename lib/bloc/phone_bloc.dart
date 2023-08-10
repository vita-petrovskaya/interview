import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/bloc/phone_event.dart';
import 'package:interview/bloc/phone_state.dart';
import 'package:interview/product/product_api.dart';

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  final ProductApi api;

  PhoneBloc({required this.api}): super(PhoneState([])) {
    // The future is here.
    on<InitPhoneEvent>((event, emit) async {
      final result = await api.getProducts();
      emit(PhoneState(result));
    });
    on<SearchPhoneEvent>((event, emit) {

    });
  }

}