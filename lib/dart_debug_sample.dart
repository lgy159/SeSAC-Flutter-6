import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      final nowTime = timeDataOne.first.ty1;
      final month = nowDate.substring(5, 7);
      final returnList = [
        '경오1국',
        '경오2국',
        '경오3국',
        '경오4국',
        '경오5국',
        '경오6국',
      ];

      try {
        final int idx = (int.parse(month) - 1) ~/ 2;
        return returnList[idx];
      } catch (e) {
        return nowTime;
      }
    } else {
      // Handle the case when the list is empty
      return '경오7국'; // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    final nowTime = DateTime.now();
    List<String> yukymTimeModelList = [
      timeDataOne.first.ty1,
      timeDataOne.first.ty2,
      timeDataOne.first.ty3,
      timeDataOne.first.ty4,
      timeDataOne.first.ty5,
      timeDataOne.first.ty6,
      timeDataOne.first.ty7,
      timeDataOne.first.ty8,
      timeDataOne.first.ty9,
      timeDataOne.first.ty10,
      timeDataOne.first.ty11,
      timeDataOne.first.ty12,
    ];

    final int timeCondition = nowTime.hour ~/ 2;
    return yukymTimeModelList[timeCondition];
  }

  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';
}
