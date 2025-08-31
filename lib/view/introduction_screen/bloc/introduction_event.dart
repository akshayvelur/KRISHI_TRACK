part of 'introduction_bloc.dart';

@immutable
sealed class IntroductionEvent {}

class LoginEvent extends IntroductionEvent{}
class LoadingSupportEvent extends IntroductionEvent{}