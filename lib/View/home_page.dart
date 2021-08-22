import 'package:agendamento_app/shared/components/consultas_list.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Agendamentos', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green[600],
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          child: Card(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: Text(
                            "Consultas ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        DatePicker(
                          DateTime.now(),
                          width: 60,
                          height: 80,
                          locale: "pt-br",
                          controller: _controller,
                          initialSelectedDate: DateTime.now(),
                          selectionColor: Colors.green,
                          selectedTextColor: Colors.white,
                          onDateChange: (date) {
                            // New date selected
                            setState(() {
                              _selectedValue = date;
                              print(_selectedValue);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListConsultas(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
