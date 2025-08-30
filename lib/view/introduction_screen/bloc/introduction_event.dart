part of 'introduction_bloc.dart';

@immutable
sealed class IntroductionEvent {}
class IntroductionToBottomNavigationEvent extends IntroductionEvent{}