import 'package:doors/features/resume_creator/data/base_pdf_creator.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_creator_bloc/resume_creator_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:doors/features/resume_creator/repository/resume_creator_repository.dart';
import 'package:doors/features/resume_creator/repository/resume_data_manager_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void resumeCreatorInit() {
  // blocs
  di.registerFactoryParam<ResumeCreatorBloc, BasePdfCreator, void>(
    (basePdfCreator, _) => ResumeCreatorBloc(
      di.get<ResumeCreatorRepository>(
        param1: basePdfCreator,
      ),
    ),
  );

  di.registerFactory<ResumeSectionsManagerBloc>(
    () => ResumeSectionsManagerBloc(di.get()),
  );
  di.registerFactoryParam<ResumeSubdivisionsManagerBloc,
      ResumeSectionsManagerBloc, void>(
    (resumeSectionsManagerBloc, _) => ResumeSubdivisionsManagerBloc(
      di.get(),
      resumeSectionsManagerBloc,
    ),
  );

  // repositories
  di.registerFactoryParam<ResumeCreatorRepository, BasePdfCreator, void>(
    (basePdfCreator, _) => ResumeCreatorRepository(
      basePdfCreator,
    ),
  );

  di.registerLazySingleton<ResumeDataManagerRepository>(
      () => ResumeDataManagerRepository(), dispose: (repository) {
    repository.clearAllResumeSections();
  });
}
