import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  final double latitude;
  final double longitude;
  final double generationtimeMs;
  final num utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final num elevation;
  final CurrentWeatherUnits currentWeatherUnits;
  final CurrentWeather currentWeather;

  Weather({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentWeatherUnits,
    required this.currentWeather,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        latitude: json["latitude"],
        longitude: json["longitude"]?.toDouble(),
        generationtimeMs: json["generationtime_ms"]?.toDouble(),
        utcOffsetSeconds: json["utc_offset_seconds"],
        timezone: json["timezone"],
        timezoneAbbreviation: json["timezone_abbreviation"],
        elevation: json["elevation"],
        currentWeatherUnits:
            CurrentWeatherUnits.fromJson(json["current_weather_units"]),
        currentWeather: CurrentWeather.fromJson(json["current_weather"]),
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "generationtime_ms": generationtimeMs,
        "utc_offset_seconds": utcOffsetSeconds,
        "timezone": timezone,
        "timezone_abbreviation": timezoneAbbreviation,
        "elevation": elevation,
        "current_weather_units": currentWeatherUnits.toJson(),
        "current_weather": currentWeather.toJson(),
      };
}

class CurrentWeather {
  final String time;
  final double numerval;
  final num temperature;
  final double windspeed;
  final num winddirection;
  final num isDay;
  final num weathercode;

  CurrentWeather({
    required this.time,
    required this.numerval,
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.isDay,
    required this.weathercode,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
        time: json["time"],
        numerval: json["numerval"],
        temperature: json["temperature"],
        windspeed: json["windspeed"]?.toDouble(),
        winddirection: json["winddirection"],
        isDay: json["is_day"],
        weathercode: json["weathercode"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "numerval": numerval,
        "temperature": temperature,
        "windspeed": windspeed,
        "winddirection": winddirection,
        "is_day": isDay,
        "weathercode": weathercode,
      };
}

class CurrentWeatherUnits {
  final String time;
  final String? numerval;
  final String temperature;
  final String windspeed;
  final String winddirection;
  final String isDay;
  final String weathercode;

  CurrentWeatherUnits({
    required this.time,
    required this.numerval,
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.isDay,
    required this.weathercode,
  });

  factory CurrentWeatherUnits.fromJson(Map<String, dynamic> json) =>
      CurrentWeatherUnits(
        time: json["time"],
        numerval: json["numerval"],
        temperature: json["temperature"],
        windspeed: json["windspeed"],
        winddirection: json["winddirection"],
        isDay: json["is_day"],
        weathercode: json["weathercode"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "numerval": numerval,
        "temperature": temperature,
        "windspeed": windspeed,
        "winddirection": winddirection,
        "is_day": isDay,
        "weathercode": weathercode,
      };
}
