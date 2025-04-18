import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    on<HomePageEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<AboutClickedEvent>((event, emit) {
      emit(AboutLoadedState());
    });

    on<ResumeClickedEvent>((event, emit) {
      emit(ResumeLoadedState());
    });

    on<PortfolioClickedEvent>((event, emit) {
      emit(PortfolioLoadedState());
    });

    on<ContactClickedEvent>((event, emit) {
      emit(ContactLoadedState());
    });
  }
}
