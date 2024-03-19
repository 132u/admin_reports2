import 'package:admin_reports3/core/resources/data_state.dart';
import 'package:admin_reports3/features/reports/data/models/report.dart';
import 'package:admin_reports3/features/reports/domain/entities/report.dart';
import 'package:admin_reports3/features/reports/domain/repository/report_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReportRepositoryImplementation implements ReportRepository{
  final FirebaseFirestore _firestore;
  const ReportRepositoryImplementation(this._firestore);

  @override
  Future<DataState> deleteReport(ReportEntity report) {
    // TODO: implement deleteReport
    throw UnimplementedError();
  }

  @override
  Future<DataState> editReport(ReportEntity report) {
    // TODO: implement editReport
    throw UnimplementedError();
  }

  @override
  Stream<List<ReportModel>> getReports() {
    CollectionReference reports = FirebaseFirestore.instance.collection('reports');
    // return _firestore.collection("reports").snapshots().map((querySnapshot) {
    //   return querySnapshot.docs.map((doc) {
    //     return ReportModel.fromJson(doc.data());
    //   }).toList();
    // });
  }
  
  @override
  Future<DataState<ReportEntity>> addReport(ReportEntity report) {
    // TODO: implement addReport
    throw UnimplementedError();
  }
  }