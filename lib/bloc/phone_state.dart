import 'package:equatable/equatable.dart';
import 'package:interview/model/product.dart';

class PhoneState extends Equatable {
  final List<Product> list;

  PhoneState(this.list);

  @override
  List<Object?> get props => [list];
}