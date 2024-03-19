import 'package:admin_reports3/core/resources/data_state.dart';
import 'package:admin_reports3/features/reports/domain/entities/report.dart';

abstract class ReportRepository{
  Stream<List<ReportEntity>> getReports();
  Future<DataState<ReportEntity>> addReport(ReportEntity report);
  Future<DataState> deleteReport(ReportEntity report);
  Future<DataState> editReport(ReportEntity report);
}