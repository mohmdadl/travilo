import 'package:equatable/equatable.dart';

abstract class DrawerEvent extends Equatable {
  const DrawerEvent();

  @override
  List<Object> get props => [];
}

class DrawerItemTapped extends DrawerEvent {
  final int index;

  const DrawerItemTapped(this.index);

  @override
  List<Object> get props => [index];
}

class LogoutTapped extends DrawerEvent {}
