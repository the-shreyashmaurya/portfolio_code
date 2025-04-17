part of 'home_page_bloc.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class AboutLoadedState extends HomePageState {}

final class ResumeLoadedState extends HomePageState {}

final class PortfolioLoadedState extends HomePageState {}

final class ContactLoadedState extends HomePageState {}
