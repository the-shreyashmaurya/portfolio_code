part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

final class AboutClickedEvent extends HomePageEvent {}

final class ResumeClickedEvent extends HomePageEvent {}

final class PortfolioClickedEvent extends HomePageEvent {}

final class ContactClickedEvent extends HomePageEvent {}