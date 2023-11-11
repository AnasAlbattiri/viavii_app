// To parse this JSON data, do
//
//     final searchEsModel = searchEsModelFromJson(jsonString);

import 'dart:convert';

SearchEsModel searchEsModelFromJson(String str) => SearchEsModel.fromJson(json.decode(str));

String searchEsModelToJson(SearchEsModel data) => json.encode(data.toJson());

class SearchEsModel {
  int total;
  int totalPages;
  List<Datum> data;
  int status;

  SearchEsModel({
    required this.total,
    required this.totalPages,
    required this.data,
    required this.status,
  });

  factory SearchEsModel.fromJson(Map<String, dynamic> json) => SearchEsModel(
    total: json["total"],
    totalPages: json["total_pages"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "total_pages": totalPages,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "status": status,
  };
}

class Datum {
  int id;
  String title;
  String price;
  dynamic salePrice;
  dynamic discountPercent;
  String image;
  String content;
  Location location;
  String isFeatured;
  String address;
  String mapLat;
  String mapLng;
  int mapZoom;
  dynamic bannerImage;
  List<String?> gallery;
  dynamic video;
  int enableExtraPrice;
  dynamic extraPrice;
  String duration;
  DatumReviewScore reviewScore;
  List<dynamic> reviewStats;
  List<ReviewList> reviewLists;
  Location? category;
  int minPeople;
  int maxPeople;
  dynamic faqs;
  List<Clude> include;
  List<Clude> exclude;
  List<String> supportedLanguages;
  List<Itinerary>? itinerary;
  List<Map<String, String?>> personTypes;
  dynamic discountByPeople;
  int enableOpenHours;
  Map<String, OpenHour> openHours;
  List<Map<String, String?>> bookingFee;
  List<Related> related;
  Map<String, Term> terms;
  String url;

  Datum({
    required this.id,
    required this.title,
    required this.price,
    this.salePrice,
    this.discountPercent,
    required this.image,
    required this.content,
    required this.location,
    required this.isFeatured,
    required this.address,
    required this.mapLat,
    required this.mapLng,
    required this.mapZoom,
    this.bannerImage,
    required this.gallery,
    this.video,
    required this.enableExtraPrice,
    this.extraPrice,
    required this.duration,
    required this.reviewScore,
    required this.reviewStats,
    required this.reviewLists,
    this.category,
    required this.minPeople,
    required this.maxPeople,
    this.faqs,
    required this.include,
    required this.exclude,
    required this.supportedLanguages,
    this.itinerary,
    required this.personTypes,
    this.discountByPeople,
    required this.enableOpenHours,
    required this.openHours,
    required this.bookingFee,
    required this.related,
    required this.terms,
    required this.url,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    salePrice: json["sale_price"],
    discountPercent: json["discount_percent"],
    image: json["image"],
    content: json["content"],
    location: Location.fromJson(json["location"]),
    isFeatured: json["is_featured"],
    address: json["address"],
    mapLat: json["map_lat"],
    mapLng: json["map_lng"],
    mapZoom: json["map_zoom"],
    bannerImage: json["banner_image"],
    gallery: List<String?>.from(json["gallery"].map((x) => x)),
    video: json["video"],
    enableExtraPrice: json["enable_extra_price"],
    extraPrice: json["extra_price"],
    duration: json["duration"],
    reviewScore: DatumReviewScore.fromJson(json["review_score"]),
    reviewStats: List<dynamic>.from(json["review_stats"].map((x) => x)),
    reviewLists: List<ReviewList>.from(json["review_lists"].map((x) => ReviewList.fromJson(x))),
    category: json["category"] == null ? null : Location.fromJson(json["category"]),
    minPeople: json["min_people"],
    maxPeople: json["max_people"],
    faqs: json["faqs"],
    include: List<Clude>.from(json["include"].map((x) => Clude.fromJson(x))),
    exclude: List<Clude>.from(json["exclude"].map((x) => Clude.fromJson(x))),
    supportedLanguages: List<String>.from(json["supported_languages"].map((x) => x)),
    itinerary: json["itinerary"] == null ? [] : List<Itinerary>.from(json["itinerary"]!.map((x) => Itinerary.fromJson(x))),
    personTypes: List<Map<String, String?>>.from(json["person_types"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    discountByPeople: json["discount_by_people"],
    enableOpenHours: json["enable_open_hours"],
    openHours: Map.from(json["open_hours"]).map((k, v) => MapEntry<String, OpenHour>(k, OpenHour.fromJson(v))),
    bookingFee: List<Map<String, String?>>.from(json["booking_fee"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    related: List<Related>.from(json["related"].map((x) => Related.fromJson(x))),
    terms: Map.from(json["terms"]).map((k, v) => MapEntry<String, Term>(k, Term.fromJson(v))),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "sale_price": salePrice,
    "discount_percent": discountPercent,
    "image": image,
    "content": content,
    "location": location.toJson(),
    "is_featured": isFeatured,
    "address": address,
    "map_lat": mapLat,
    "map_lng": mapLng,
    "map_zoom": mapZoom,
    "banner_image": bannerImage,
    "gallery": List<dynamic>.from(gallery.map((x) => x)),
    "video": video,
    "enable_extra_price": enableExtraPrice,
    "extra_price": extraPrice,
    "duration": duration,
    "review_score": reviewScore.toJson(),
    "review_stats": List<dynamic>.from(reviewStats.map((x) => x)),
    "review_lists": List<dynamic>.from(reviewLists.map((x) => x.toJson())),
    "category": category?.toJson(),
    "min_people": minPeople,
    "max_people": maxPeople,
    "faqs": faqs,
    "include": List<dynamic>.from(include.map((x) => x.toJson())),
    "exclude": List<dynamic>.from(exclude.map((x) => x.toJson())),
    "supported_languages": List<dynamic>.from(supportedLanguages.map((x) => x)),
    "itinerary": itinerary == null ? [] : List<dynamic>.from(itinerary!.map((x) => x.toJson())),
    "person_types": List<dynamic>.from(personTypes.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "discount_by_people": discountByPeople,
    "enable_open_hours": enableOpenHours,
    "open_hours": Map.from(openHours).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "booking_fee": List<dynamic>.from(bookingFee.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "related": List<dynamic>.from(related.map((x) => x.toJson())),
    "terms": Map.from(terms).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "url": url,
  };
}

class Location {
  int id;
  String name;

  Location({
    required this.id,
    required this.name,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Clude {
  String title;

  Clude({
    required this.title,
  });

  factory Clude.fromJson(Map<String, dynamic> json) => Clude(
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
  };
}

class Itinerary {
  dynamic imageId;
  String title;
  String desc;
  String content;
  dynamic image;

  Itinerary({
    this.imageId,
    required this.title,
    required this.desc,
    required this.content,
    this.image,
  });

  factory Itinerary.fromJson(Map<String, dynamic> json) => Itinerary(
    imageId: json["image_id"],
    title: json["title"],
    desc: json["desc"],
    content: json["content"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "image_id": imageId,
    "title": title,
    "desc": desc,
    "content": content,
    "image": image,
  };
}

class OpenHour {
  String enable;
  List<Hour> hours;

  OpenHour({
    required this.enable,
    required this.hours,
  });

  factory OpenHour.fromJson(Map<String, dynamic> json) => OpenHour(
    enable: json["enable"],
    hours: List<Hour>.from(json["hours"].map((x) => Hour.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "enable": enable,
    "hours": List<dynamic>.from(hours.map((x) => x.toJson())),
  };
}

class Hour {
  From from;
  To to;

  Hour({
    required this.from,
    required this.to,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
    from: fromValues.map[json["from"]]!,
    to: toValues.map[json["to"]]!,
  );

  Map<String, dynamic> toJson() => {
    "from": fromValues.reverse[from],
    "to": toValues.reverse[to],
  };
}

enum From { THE_0900, THE_1330, THE_1930 }

final fromValues = EnumValues({
  "09:00": From.THE_0900,
  "13:30": From.THE_1330,
  "19:30": From.THE_1930
});

enum To { THE_2100, THE_1130, THE_1600, THE_2200, THE_2330 }

final toValues = EnumValues({
  "11:30": To.THE_1130,
  "16:00": To.THE_1600,
  "21:00": To.THE_2100,
  "22:00": To.THE_2200,
  "23:30": To.THE_2330
});

class Related {
  int id;
  String title;
  String price;
  dynamic salePrice;
  dynamic discountPercent;
  String image;
  String content;
  Location location;
  String isFeatured;
  String duration;
  RelatedReviewScore reviewScore;
  String url;

  Related({
    required this.id,
    required this.title,
    required this.price,
    this.salePrice,
    this.discountPercent,
    required this.image,
    required this.content,
    required this.location,
    required this.isFeatured,
    required this.duration,
    required this.reviewScore,
    required this.url,
  });

  factory Related.fromJson(Map<String, dynamic> json) => Related(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    salePrice: json["sale_price"],
    discountPercent: json["discount_percent"],
    image: json["image"],
    content: json["content"],
    location: Location.fromJson(json["location"]),
    isFeatured: json["is_featured"],
    duration: json["duration"],
    reviewScore: RelatedReviewScore.fromJson(json["review_score"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "sale_price": salePrice,
    "discount_percent": discountPercent,
    "image": image,
    "content": content,
    "location": location.toJson(),
    "is_featured": isFeatured,
    "duration": duration,
    "review_score": reviewScore.toJson(),
    "url": url,
  };
}

class RelatedReviewScore {
  dynamic scoreTotal;
  int totalReview;

  RelatedReviewScore({
    required this.scoreTotal,
    required this.totalReview,
  });

  factory RelatedReviewScore.fromJson(Map<String, dynamic> json) => RelatedReviewScore(
    scoreTotal: json["score_total"],
    totalReview: json["total_review"],
  );

  Map<String, dynamic> toJson() => {
    "score_total": scoreTotal,
    "total_review": totalReview,
  };
}

class ReviewList {
  int id;
  String title;
  String content;
  int rateNumber;
  String authorIp;
  String status;
  DateTime createdAt;
  int vendorId;
  int createUser;
  dynamic userName;
  Author author;

  ReviewList({
    required this.id,
    required this.title,
    required this.content,
    required this.rateNumber,
    required this.authorIp,
    required this.status,
    required this.createdAt,
    required this.vendorId,
    required this.createUser,
    this.userName,
    required this.author,
  });

  factory ReviewList.fromJson(Map<String, dynamic> json) => ReviewList(
    id: json["id"],
    title: json["title"],
    content: json["content"],
    rateNumber: json["rate_number"],
    authorIp: json["author_ip"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    vendorId: json["vendor_id"],
    createUser: json["create_user"],
    userName: json["user_name"],
    author: Author.fromJson(json["author"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
    "rate_number": rateNumber,
    "author_ip": authorIp,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "vendor_id": vendorId,
    "create_user": createUser,
    "user_name": userName,
    "author": author.toJson(),
  };
}

class Author {
  int id;
  String name;
  String firstName;
  String lastName;
  dynamic avatarId;

  Author({
    required this.id,
    required this.name,
    required this.firstName,
    required this.lastName,
    this.avatarId,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    id: json["id"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatarId: json["avatar_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "avatar_id": avatarId,
  };
}

class DatumReviewScore {
  dynamic scoreTotal;
  String scoreText;
  int totalReview;
  Map<String, RateScore> rateScore;

  DatumReviewScore({
    required this.scoreTotal,
    required this.scoreText,
    required this.totalReview,
    required this.rateScore,
  });

  factory DatumReviewScore.fromJson(Map<String, dynamic> json) => DatumReviewScore(
    scoreTotal: json["score_total"],
    scoreText: json["score_text"],
    totalReview: json["total_review"],
    rateScore: Map.from(json["rate_score"]).map((k, v) => MapEntry<String, RateScore>(k, RateScore.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "score_total": scoreTotal,
    "score_text": scoreText,
    "total_review": totalReview,
    "rate_score": Map.from(rateScore).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class RateScore {
  String title;
  int total;
  int percent;

  RateScore({
    required this.title,
    required this.total,
    required this.percent,
  });

  factory RateScore.fromJson(Map<String, dynamic> json) => RateScore(
    title: json["title"],
    total: json["total"],
    percent: json["percent"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "total": total,
    "percent": percent,
  };
}

class Term {
  Parent parent;
  List<Child> child;

  Term({
    required this.parent,
    required this.child,
  });

  factory Term.fromJson(Map<String, dynamic> json) => Term(
    parent: Parent.fromJson(json["parent"]),
    child: List<Child>.from(json["child"].map((x) => Child.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "parent": parent.toJson(),
    "child": List<dynamic>.from(child.map((x) => x.toJson())),
  };
}

class Child {
  int id;
  String title;
  dynamic content;
  dynamic imageId;
  String? icon;
  int attrId;
  String slug;

  Child({
    required this.id,
    required this.title,
    this.content,
    this.imageId,
    this.icon,
    required this.attrId,
    required this.slug,
  });

  factory Child.fromJson(Map<String, dynamic> json) => Child(
    id: json["id"],
    title: json["title"],
    content: json["content"],
    imageId: json["image_id"],
    icon: json["icon"],
    attrId: json["attr_id"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
    "image_id": imageId,
    "icon": icon,
    "attr_id": attrId,
    "slug": slug,
  };
}

class Parent {
  int id;
  String title;
  String slug;
  String service;
  dynamic displayType;
  dynamic hideInSingle;

  Parent({
    required this.id,
    required this.title,
    required this.slug,
    required this.service,
    this.displayType,
    this.hideInSingle,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    service: json["service"],
    displayType: json["display_type"],
    hideInSingle: json["hide_in_single"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "slug": slug,
    "service": service,
    "display_type": displayType,
    "hide_in_single": hideInSingle,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
