import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  bool? isDayTime;
  String? flag;
  String url;

  WorldTime({required this.location, this.flag, required this.url});

  Future<void> getTime() async {
    try {
      var uri = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      Response response = await get(uri);
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      Map offData = {
        'hours': offset.substring(1, 3),
        'minutes': offset.substring(4),
      };

      // print(data['utc_datetime']);
      DateTime now = DateTime.parse(datetime);
      now = now.add(
        Duration(
          hours: int.parse(offData['hours']),
          minutes: int.parse(offData['minutes']),
        ),
      );

      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get the time';
    }
  }
}
