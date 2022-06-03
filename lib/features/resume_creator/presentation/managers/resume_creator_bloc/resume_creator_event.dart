part of 'resume_creator_bloc.dart';

@freezed
class ResumeCreatorEvent with _$ResumeCreatorEvent {
  const factory ResumeCreatorEvent.created(dynamic argument) = ResumeCreatorCreated;
}