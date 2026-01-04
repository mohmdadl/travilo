import 'package:flutter_bloc/flutter_bloc.dart';
import 'drawer_event.dart';
import 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(const DrawerState()) {
    on<DrawerItemTapped>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });

    on<LogoutTapped>((event, emit) {
      // Handle logout logic here or trigger a side effect
      // For now, we just update state or do nothing specific in UI state
      // In a real app, this might trigger a navigation or auth clear.
    });
  }
}
