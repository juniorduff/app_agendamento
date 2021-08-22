import 'package:agendamento_app/model/appointments.dart';
import 'package:agendamento_app/utils/custo_dio.dart';

class AppointmentRepository {
  var dio = CustomDio().getDio;

  final url = "https://agendamento-back.herokuapp.com/appointment";
  Future<List<Appointment>> getAppointment() async {
    final response = await dio.get(url);
    final listAppointments = await response.data as List;

    List<Appointment> appontments = [];
    for (var json in listAppointments) {
      final appointment = Appointment.fromJson(json);
      listAppointments.add(appointment);
    }
    print(appontments);
    return appontments;
  }
}
