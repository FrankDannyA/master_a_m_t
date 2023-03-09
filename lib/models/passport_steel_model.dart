class PassportSteelModel {
  final String passportNumber;
  final String currentSteelMark;
  final String timeBeginSmelting;
  final String timeEndSmelting;
  final String timeBeginProcessing;
  final String timeEndProcessing;
  final String timeBeginCasting;
  final String timeEndCasting;

  PassportSteelModel({
    required this.passportNumber,
    required this.currentSteelMark,
    required this.timeBeginSmelting,
    required this.timeEndSmelting,
    required this.timeBeginProcessing,
    required this.timeEndProcessing,
    required this.timeBeginCasting,
    required this.timeEndCasting,
  });
}
