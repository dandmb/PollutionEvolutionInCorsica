part of 'pollution_cubit.dart';

@immutable
abstract class PollutionState {}

class PollutionInitial extends PollutionState {}

class PollutionLoadingState extends PollutionState {}

class PollutionLoadedState extends PollutionState {
  final List<dynamic> pollutions;
  PollutionLoadedState(this.pollutions);

}
class PollutionErrorState extends PollutionState {
  final String error;
  PollutionErrorState(this.error);
}