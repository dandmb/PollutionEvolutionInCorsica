import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repo/repositories.dart';

part 'pollution_state.dart';

class PollutionCubit extends Cubit<PollutionState> {
  final PollutionRepository _recipeRepository;
  PollutionCubit(this._recipeRepository) : super(PollutionInitial());
  Future<void>fetchPollution() async{

    emit(PollutionLoadingState());
    try{
      final response=await _recipeRepository.getData();
      //print("Dans cubit");
      //print(response[0]);
      emit(PollutionLoadedState(response));
    }catch(e){
      emit(PollutionErrorState(e.toString()));
    }

  }
}
