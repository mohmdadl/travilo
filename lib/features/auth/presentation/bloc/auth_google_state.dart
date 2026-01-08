abstract class GoogleAuthState {
  const GoogleAuthState();

  List<Object?> get props => [];
}

class GoogleAuthInitial extends GoogleAuthState {}

class GoogleAuthLoading extends GoogleAuthState {}

class GoogleAuthSuccess extends GoogleAuthState {
  final String message;
  const GoogleAuthSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class GoogleAuthError extends GoogleAuthState {
  final String message;
  const GoogleAuthError(this.message);

  @override
  List<Object?> get props => [message];
}