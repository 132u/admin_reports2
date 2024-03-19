import 'package:admin_reports3/features/reports/data/repository/report_repository_implementation.dart';
import 'package:admin_reports3/features/reports/domain/repository/report_repository.dart';
import 'package:admin_reports3/features/reports/domain/usecases/reports_usecases.dart';
import 'package:admin_reports3/features/reports/presentation/block/bloc/reports_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async 
{
  // final fireStore = FirebaseFirestore.instance;

  // sl.registerLazySingleton<FirebaseFirestore>(fireStore);
  // final auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;
  fireStore.settings = const Settings(
    persistenceEnabled: true,
  );
  // sl.registerLazySingleton(() => auth);
  sl.registerLazySingleton(() => fireStore);
  sl.registerSingleton<ReportRepository>(ReportRepositoryImplementation(sl()));
  sl.registerSingleton<GetAllReportsUseCase>(GetAllReportsUseCase(sl()));
  sl.registerFactory<ReportBloc>(() => ReportBloc(sl()));
  
  // sl.registerSingleton<Dio>(Dio(sl()));
  
}