import 'package:agendamento_app/model/appointments.dart';
import 'package:agendamento_app/repositories/appointmentRepository.dart';
import 'package:flutter/material.dart';

class ListConsultas extends StatefulWidget {
  const ListConsultas({Key? key}) : super(key: key);
  @override
  _ListConsultasState createState() => _ListConsultasState();
}

class _ListConsultasState extends State<ListConsultas> {
  late Future<List<Appointment>> appointmentFuture;
  @override
  void initState() {
    final appointmentRepository = AppointmentRepository();
    appointmentFuture = appointmentRepository.getAppointment();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Center(
          child: FutureBuilder(
        future: this.appointmentFuture,
        builder:
            (BuildContext context, AsyncSnapshot<List<Appointment>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
                child: Column(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Text("Error ${snapshot.error}")
              ],
            ));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                var item = snapshot.data![index];
                return ListTile(
                  title: Text(item.patient!.name),
                );
              },
            );
          }
        },
      )),
    );
  }
}
