import 'package:flutter/material.dart';
import 'package:master_a_m_t/widgets/row_input.dart';
import 'package:master_a_m_t/widgets/row_title.dart';
import 'package:master_a_m_t/widgets/textfield_input.dart';

class NewPassPage extends StatefulWidget {
  const NewPassPage({Key? key}) : super(key: key);

  @override
  _NewPassPageState createState() => _NewPassPageState();
}

class _NewPassPageState extends State<NewPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Arcelor Mittal"),
      ),
      body: ListView(
        children: const [
          //персонал
          RowTitle(titleName: "Персонал"),
          RowInput(nameRow: "Номер бригады:"),
          RowInput(nameRow: "Начальник Смены:"),
          RowInput(nameRow: "Мастер производства:"),
          RowInput(nameRow: "Конвертерщик"),
          RowInput(nameRow: "Контрольный мастер ЦТК"),
          RowInput(nameRow: "Контролёр ЦТК"),
          RowInput(nameRow: "Оператор ПУ Конвертера"),
          //общее
          RowTitle(titleName: "Общее"),
          RowInput(nameRow: "Паспорт плавки №"),
          RowInput(nameRow: "Дата:"),
          RowInput(nameRow: "№ пл. в сутках:"),
          RowInput(nameRow: "№ пл. в серии:"),
          RowInput(nameRow: "№ МНЛЗ:"),
          RowInput(nameRow: "№ серии с н.г.:"),
          RowInput(nameRow: "Заданная марка стали:"),
        ],
      ),
    );
  }
}
