import 'package:agendamento_app/model/patient.dart';
import 'package:agendamento_app/model/user.dart';

class Appointment {
  String? id;
  String? dateAppointment;
  String? complaint;
  String? treatment;
  String? userId;
  bool? isConfirmed;
  bool? inProgress;
  bool? isDone;
  Patient? patient;
  User? fisioterapeuta;
  String? createdAt;
  DateTime? updatedAt;

  Appointment(
      this.id,
      this.dateAppointment,
      this.complaint,
      this.treatment,
      this.fisioterapeuta,
      this.isConfirmed,
      this.inProgress,
      this.isDone,
      this.patient,
      this.createdAt,
      this.updatedAt);

  Appointment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateAppointment = json['date_appointment'];
    complaint = json['complaint'];
    treatment = json['treatment'];
    fisioterapeuta = json['fisioterapeuta'];
    isConfirmed = json['isConfirmed'];
    inProgress = json['inProgress'];
    isDone = json['isDone'];
    patient = json['patient'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date_appointment'] = this.dateAppointment;
    data['complaint'] = this.complaint;
    data['treatment'] = this.treatment;
    data['fisioterapeuta'] = this.fisioterapeuta;
    data['isConfirmed'] = this.isConfirmed;
    data['inProgress'] = this.inProgress;
    data['isDone'] = this.isDone;
    data['patient'] = this.patient;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
