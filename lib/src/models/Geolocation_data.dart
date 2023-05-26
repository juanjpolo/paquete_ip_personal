import 'package:meta/meta.dart';
import 'dart:convert';

Geolocation geolocationFromJson(String str) => Geolocation.fromJson(json.decode(str));

String geolocationToJson(Geolocation data) => json.encode(data.toJson());

class Geolocation {
    final String status;
    final String country;
    final String countryCode;
    final String region;
    final String regionName;
    final String city;
    final String zip;
    final double lat;
    final double lon;
    final String timezone;
    final String isp;
    final String org;
    final String geolocationAs;
    final String query;

    Geolocation({
        required this.status,
        required this.country,
        required this.countryCode,
        required this.region,
        required this.regionName,
        required this.city,
        required this.zip,
        required this.lat,
        required this.lon,
        required this.timezone,
        required this.isp,
        required this.org,
        required this.geolocationAs,
        required this.query,
    });

    factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        status: json["status"],
        country: json["country"],
        countryCode: json["countryCode"],
        region: json["region"],
        regionName: json["regionName"],
        city: json["city"],
        zip: json["zip"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        timezone: json["timezone"],
        isp: json["isp"],
        org: json["org"],
        geolocationAs: json["as"],
        query: json["query"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "country": country,
        "countryCode": countryCode,
        "region": region,
        "regionName": regionName,
        "city": city,
        "zip": zip,
        "lat": lat,
        "lon": lon,
        "timezone": timezone,
        "isp": isp,
        "org": org,
        "as": geolocationAs,
        "query": query,
    };
}