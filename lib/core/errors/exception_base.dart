import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ExceptionBase extends Equatable implements Exception {
  final String message;

  const ExceptionBase(this.message);
  @override
  String toString() => message;

  String getLocalMessageError(BuildContext context) {
    return toString();
  }

  @override
  List<Object?> get props => [message];
}
