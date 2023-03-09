import 'package:flutter/material.dart';
import 'package:master_a_m_t/models/passport_steel_model.dart';
import 'package:master_a_m_t/widgets/home_page_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PassportSteelModel> passportSteelList = [
    PassportSteelModel(
      passportNumber: "323807",
      currentSteelMark: "08-PS",
      timeBeginSmelting: '19:00',
      timeEndSmelting: '19:40',
      timeBeginProcessing: '19:45',
      timeEndProcessing: '20:22',
      timeBeginCasting: '20:30',
      timeEndCasting: '21:10',
    ),
    PassportSteelModel(
      passportNumber: "323808",
      currentSteelMark: "08-PS",
      timeBeginSmelting: '19:20',
      timeEndSmelting: '20:10',
      timeBeginProcessing: '20:15',
      timeEndProcessing: '**:**',
      timeBeginCasting: '**:**',
      timeEndCasting: '**:**',
    ),
    PassportSteelModel(
      passportNumber: "323809",
      currentSteelMark: "08-PS",
      timeBeginSmelting: '20:15',
      timeEndSmelting: '**:**',
      timeBeginProcessing: '**:**',
      timeEndProcessing: '**:**',
      timeBeginCasting: '**:**',
      timeEndCasting: '**:**',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arcellor Mittal"),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed("/create_new_pass"),
            icon: const Icon(
              Icons.note_add_outlined,
              size: 32,
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: passportSteelList.length,
          itemBuilder: (context, index) {
            return HomePageTile(
              passportNumber: passportSteelList[index].passportNumber,
              currentSteelMark: passportSteelList[index].currentSteelMark,
              timeBeginSmelting: passportSteelList[index].timeBeginSmelting,
              timeEndSmelting: passportSteelList[index].timeEndSmelting,
              timeBeginProcessing: passportSteelList[index].timeBeginProcessing,
              timeEndProcessing: passportSteelList[index].timeEndProcessing,
              timeBeginCasting: passportSteelList[index].timeBeginCasting,
              timeEndCasting: passportSteelList[index].timeEndCasting,
            );
          }),
    );
  }
}
