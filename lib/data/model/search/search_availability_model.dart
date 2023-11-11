// To parse this JSON data, do
//
//     final searchAvailability = searchAvailabilityFromJson(jsonString);

import 'dart:convert';

List<SearchAvailability> searchAvailabilityFromJson(String str) => List<SearchAvailability>.from(json.decode(str).map((x) => SearchAvailability.fromJson(x)));

String searchAvailabilityToJson(List<SearchAvailability> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchAvailability {
  int id;
  int active;
  String price;
  OrignalPrice orignalPrice;
  bool isDefault;
  PriceHtml priceHtml;
  int maxGuests;
  Event event;
  Event title;
  DateTime end;
  DateTime start;
  List<PersonType> personTypes;

  SearchAvailability({
    required this.id,
    required this.active,
    required this.price,
    required this.orignalPrice,
    required this.isDefault,
    required this.priceHtml,
    required this.maxGuests,
    required this.event,
    required this.title,
    required this.end,
    required this.start,
    required this.personTypes,
  });

  factory SearchAvailability.fromJson(Map<String, dynamic> json) => SearchAvailability(
    id: json["id"],
    active: json["active"],
    price: json["price"],
    orignalPrice: orignalPriceValues.map[json["orignal_price"]]!,
    isDefault: json["is_default"],
    priceHtml: priceHtmlValues.map[json["price_html"]]!,
    maxGuests: json["max_guests"],
    event: eventValues.map[json["event"]]!,
    title: eventValues.map[json["title"]]!,
    end: DateTime.parse(json["end"]),
    start: DateTime.parse(json["start"]),
    personTypes: List<PersonType>.from(json["person_types"].map((x) => PersonType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "active": active,
    "price": price,
    "orignal_price": orignalPriceValues.reverse[orignalPrice],
    "is_default": isDefault,
    "price_html": priceHtmlValues.reverse[priceHtml],
    "max_guests": maxGuests,
    "event": eventValues.reverse[event],
    "title": eventValues.reverse[title],
    "end": "${end.year.toString().padLeft(4, '0')}-${end.month.toString().padLeft(2, '0')}-${end.day.toString().padLeft(2, '0')}",
    "start": "${start.year.toString().padLeft(4, '0')}-${start.month.toString().padLeft(2, '0')}-${start.day.toString().padLeft(2, '0')}",
    "person_types": List<dynamic>.from(personTypes.map((x) => x.toJson())),
  };
}

enum Event { ZIGLAB_DAM_200_BR }

final eventValues = EnumValues({
  "Ziglab Dam: \u00242.00<br>": Event.ZIGLAB_DAM_200_BR
});

enum OrignalPrice { THE_142_JD }

final orignalPriceValues = EnumValues({
  "1.42 JD": OrignalPrice.THE_142_JD
});

class PersonType {
  Name name;
  Desc desc;
  String min;
  String max;
  String price;
  PriceHtml displayPrice;
  String number;

  PersonType({
    required this.name,
    required this.desc,
    required this.min,
    required this.max,
    required this.price,
    required this.displayPrice,
    required this.number,
  });

  factory PersonType.fromJson(Map<String, dynamic> json) => PersonType(
    name: nameValues.map[json["name"]]!,
    desc: descValues.map[json["desc"]]!,
    min: json["min"],
    max: json["max"],
    price: json["price"],
    displayPrice: priceHtmlValues.map[json["display_price"]]!,
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "desc": descValues.reverse[desc],
    "min": min,
    "max": max,
    "price": price,
    "display_price": priceHtmlValues.reverse[displayPrice],
    "number": number,
  };
}

enum Desc { NO_DESCRIPTION }

final descValues = EnumValues({
  "No Description": Desc.NO_DESCRIPTION
});

enum PriceHtml { THE_200 }

final priceHtmlValues = EnumValues({
  "\u00242.00": PriceHtml.THE_200
});

enum Name { ZIGLAB_DAM }

final nameValues = EnumValues({
  "Ziglab Dam": Name.ZIGLAB_DAM
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
