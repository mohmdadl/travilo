import 'package:equatable/equatable.dart';

class DrawerState extends Equatable {
  final int selectedIndex;

  const DrawerState({this.selectedIndex = 0});

  DrawerState copyWith({int? selectedIndex}) {
    return DrawerState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }

  @override
  List<Object> get props => [selectedIndex];
}
