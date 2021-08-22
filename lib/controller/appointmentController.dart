import 'package:agendamento_app/model/appointments.dart';
import 'package:agendamento_app/repositories/appointmentRepository.dart';

class AppointmentController {
  List<Appointment> appointments = [];
  HomeState state = HomeState.start;
  final repository = AppointmentRepository();

  Future start() async {
    state = HomeState.loading;
    try {
      appointments = await repository.getAppointment();
      print(appointments);
      state = HomeState.success;
      return appointments.toList();
    } catch (e) {
      state = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }
