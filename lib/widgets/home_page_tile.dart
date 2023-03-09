import 'package:flutter/material.dart';
import 'package:master_a_m_t/widgets/widget_components/tile_subtitle.dart';
import 'package:master_a_m_t/widgets/widget_components/tile_subtitle_value.dart';

class HomePageTile extends StatelessWidget {
  final String passportNumber;
  final String currentSteelMark;
  final String timeBeginSmelting;
  final String timeEndSmelting;
  final String timeBeginProcessing;
  final String timeEndProcessing;
  final String timeBeginCasting;
  final String timeEndCasting;

  const HomePageTile(
      {Key? key,
      required this.passportNumber,
      required this.currentSteelMark,
      required this.timeBeginSmelting,
      required this.timeEndSmelting,
      required this.timeBeginProcessing,
      required this.timeEndProcessing,
      required this.timeBeginCasting,
      required this.timeEndCasting})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Container(
        //height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange[400],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const TileSubtitle(name: "Номер пасспорта"),
                  TileSubtitleValue(value: passportNumber),
                ],
              ),
              Column(
                children: [
                  const TileSubtitle(name: "Марка стали"),
                  TileSubtitleValue(value: currentSteelMark),
                ],
              ),
              Column(
                children: [
                  const TileSubtitle(name: "Нач/Кон Выплавки"),
                  TileSubtitleValue(
                      value: "$timeBeginSmelting / $timeEndSmelting"),
                  const TileSubtitle(name: "Нач/Кон Обработки"),
                  TileSubtitleValue(
                      value: "$timeBeginProcessing / $timeEndProcessing"),
                  const TileSubtitle(name: "Нач/Кон Разливки"),
                  TileSubtitleValue(
                      value: "$timeBeginCasting / $timeEndCasting"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
