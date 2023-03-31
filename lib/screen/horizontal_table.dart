import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:medical_center/screen/user_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38, 0, 0, 0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        'Чтобы просмотреть обращение детально кликните дважды по строке')),
              )),
          Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38, 0, 0, 0),
                child: Container(child: _getBodyWidget()),
              )),
        ],
      ),
    )));
  }

  List tasksList = [
    {
      'type_call': 'Входящий',
      'number_phone': '+7 (988) 887 88 91',
      'full_name': ' - ',
      'date': ' 01.09.2022 ',
      'time': ' 08:00 ',
      'duration': ' 00:00:57 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'number_phone_user': '+7 (988) 887 88 91',
      'full_name_user': 'Высоцкий Константин Андреевич ',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
    {
      'type_call': 'Исходящий',
      'number_phone': '+7 (988) 887 88 91',
      'full_name': 'Соколова Мария Павловна',
      'date': ' 31.08.2022 ',
      'time': ' 20:00 ',
      'duration': ' 00:02:55 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'number_phone_user': '+7 (988) 887 88 91',
      'full_name_user': 'Высоцкий Константин Андреевич ',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
    {
      'type_call': 'Пропущенный',
      'number_phone': '+7 (988) 887 88 92',
      'full_name': 'Соколова Мария Павловна',
      'date': ' 31.08.2022 ',
      'time': ' 08:00 ',
      'duration': ' 00:03:35 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'number_phone_user': '+7 (988) 887 88 91',
      'full_name_user': 'Высоцкий Константин Андреевич ',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
    {
      'type_call': 'Входящий',
      'number_phone': '+7 (988) 887 88 91',
      'full_name': ' Антонова Дарья Андреевна ',
      'date': ' 01.09.2022 ',
      'time': ' 08:00 ',
      'duration': ' 00:00:57 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'number_phone_user': '+7 (988) 887 88 91',
      'full_name_user': 'Высоцкий Константин Андреевич ',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
    {
      'type_call': 'Исходящий',
      'number_phone': '+7 (988) 887 88 91',
      'full_name': 'Соколова Мария Павловна',
      'date': ' 31.08.2022 ',
      'time': ' 20:00 ',
      'duration': ' 00:02:55 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
    {
      'type_call': 'Пропущенный',
      'number_phone': '+7 (988) 887 88 92',
      'full_name': 'Соколова Мария Павловна',
      'date': ' 31.08.2022 ',
      'time': ' 08:00 ',
      'duration': ' 00:03:35 ',
      'title_card': 'Входящий звонок, 9 марта 2023, 09:56',
      'number_phone_user': '+7 (988) 887 88 91',
      'full_name_user': 'Павлова Юлия Николаевна',
      'full_name_employee': 'Жванецкая Ирина Павловна',
      'position_employee': ' Администратор ',
      'status': ' Не записан ',
    },
  ];

  Widget _getBodyWidget() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 197,
        rightHandSideColumnWidth: MediaQuery.of(context).size.width,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: tasksList.length,
        rowSeparatorWidget: const Divider(
          color: Colors.black54,
          height: 1.0,
          thickness: 0.0,
        ),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Тип звонка', 197),
      _getTitleItemWidget('Номер телефона', 224),
      _getTitleItemWidget('ФИО', 380),
      _getTitleItemWidget('Дата', 135),
      _getTitleItemWidget('Время', 117),
      _getTitleItemWidget('Длительность', 180),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 197,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.call,
            color: Color(0xffF08786),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    textStyle: const TextStyle(color: Colors.black)),
                child: Text(
                  tasksList[index]['type_call'].toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              UserCadr(index: index, tasksList: tasksList)));
                },
              )),
        ],
      ),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 224,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(tasksList[index]['number_phone'].toString(),
              style: TextStyle(fontSize: 16)),
        ),
        Container(
          child: Text(tasksList[index]['full_name'].toString()),
          width: 380,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(tasksList[index]['date'].toString()),
          width: 135,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(tasksList[index]['time'].toString()),
          width: 117,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(tasksList[index]['duration'].toString()),
          width: 180,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}
