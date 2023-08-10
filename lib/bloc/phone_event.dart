import 'package:equatable/equatable.dart';

abstract class PhoneEvent extends Equatable {

}

class InitPhoneEvent extends PhoneEvent {
  @override
  List<Object?> get props => [];
}

class SearchPhoneEvent extends PhoneEvent {
  @override
  List<Object?> get props => [];
}