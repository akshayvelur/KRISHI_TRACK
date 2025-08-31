part of 'introduction_bloc.dart';

@immutable
sealed class IntroductionState {}

final class IntroductionInitial extends IntroductionState {}
class LoginState extends IntroductionState{}
class LoadingState extends IntroductionState{}