// To parse this JSON data, do
//
//     final searchDetailsModel = searchDetailsModelFromJson(jsonString);

import 'dart:convert';

SearchDetailsModel searchDetailsModelFromJson(String str) => SearchDetailsModel.fromJson(json.decode(str));

String searchDetailsModelToJson(SearchDetailsModel data) => json.encode(data.toJson());

class SearchDetailsModel {
  Data data;
  int status;

  SearchDetailsModel({
    required this.data,
    required this.status,
  });

  factory SearchDetailsModel.fromJson(Map<String, dynamic> json) => SearchDetailsModel(
    data: Data.fromJson(json["data"]),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "status": status,
  };
}

class Data {
  int id;
  String title;
  String price;
  dynamic salePrice;
  dynamic discountPercent;
  String image;
  String content;
  Category location;
  String isFeatured;
  dynamic address;
  String mapLat;
  String mapLng;
  int mapZoom;
  String bannerImage;
  List<String> gallery;
  dynamic video;
  int enableExtraPrice;
  dynamic extraPrice;
  String duration;
  DataReviewScore reviewScore;
  List<dynamic> reviewStats;
  List<dynamic> reviewLists;
  Category category;
  int minPeople;
  int maxPeople;
  dynamic faqs;
  dynamic include;
  dynamic exclude;
  List<String> supportedLanguages;
  List<Itinerary> itinerary;
  List<PersonType> personTypes;
  dynamic discountByPeople;
  int enableOpenHours;
  dynamic openHours;
  List<BookingFee> bookingFee;
  List<Related> related;
  Terms terms;
  String url;

  Data({
    required this.id,
    required this.title,
    required this.price,
    this.salePrice,
    this.discountPercent,
    required this.image,
    required this.content,
    required this.location,
    required this.isFeatured,
    this.address,
    required this.mapLat,
    required this.mapLng,
    required this.mapZoom,
    required this.bannerImage,
    required this.gallery,
    this.video,
    required this.enableExtraPrice,
    this.extraPrice,
    required this.duration,
    required this.reviewScore,
    required this.reviewStats,
    required this.reviewLists,
    required this.category,
    required this.minPeople,
    required this.maxPeople,
    this.faqs,
    this.include,
    this.exclude,
    required this.supportedLanguages,
    required this.itinerary,
    required this.personTypes,
    this.discountByPeople,
    required this.enableOpenHours,
    this.openHours,
    required this.bookingFee,
    required this.related,
    required this.terms,
    required this.url,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    salePrice: json["sale_price"],
    discountPercent: json["discount_percent"],
    image: json["image"],
    content: json["content"],
    location: Category.fromJson(json["location"]),
    isFeatured: json["is_featured"],
    address: json["address"],
    mapLat: json["map_lat"],
    mapLng: json["map_lng"],
    mapZoom: json["map_zoom"],
    bannerImage: json["banner_image"],
    gallery: List<String>.from(json["gallery"].map((x) => x)),
    video: json["video"],
    enableExtraPrice: json["enable_extra_price"],
    extraPrice: json["extra_price"],
    duration: json["duration"],
    reviewScore: DataReviewScore.fromJson(json["review_score"]),
    reviewStats: List<dynamic>.from(json["review_stats"].map((x) => x)),
    reviewLists: List<dynamic>.from(json["review_lists"].map((x) => x)),
    category: Category.fromJson(json["category"]),
    minPeople: json["min_people"],
    maxPeople: json["max_people"],
    faqs: json["faqs"],
    include: json["include"],
    exclude: json["exclude"],
    supportedLanguages: List<String>.from(json["supported_languages"].map((x) => x)),
    itinerary: List<Itinerary>.from(json["itinerary"].map((x) => Itinerary.fromJson(x))),
    personTypes: List<PersonType>.from(json["person_types"].map((x) => PersonType.fromJson(x))),
    discountByPeople: json["discount_by_people"],
    enableOpenHours: json["enable_open_hours"],
    openHours: json["open_hours"],
    bookingFee: List<BookingFee>.from(json["booking_fee"].map((x) => BookingFee.fromJson(x))),
    related: List<Related>.from(json["related"].map((x) => Related.fromJson(x))),
    terms: Terms.fromJson(json["terms"]),
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
    "review_lists": List<dynamic>.from(reviewLists.map((x) => x)),
    "category": category.toJson(),
    "min_people": minPeople,
    "max_people": maxPeople,
    "faqs": faqs,
    "include": include,
    "exclude": exclude,
    "supported_languages": List<dynamic>.from(supportedLanguages.map((x) => x)),
    "itinerary": List<dynamic>.from(itinerary.map((x) => x.toJson())),
    "person_types": List<dynamic>.from(personTypes.map((x) => x.toJson())),
    "discount_by_people": discountByPeople,
    "enable_open_hours": enableOpenHours,
    "open_hours": openHours,
    "booking_fee": List<dynamic>.from(bookingFee.map((x) => x.toJson())),
    "related": List<dynamic>.from(related.map((x) => x.toJson())),
    "terms": terms.toJson(),
    "url": url,
  };
}

class BookingFee {
  String name;
  String desc;
  String nameAr;
  String descAr;
  String nameEs;
  String descEs;
  String namePt;
  String descPt;
  String price;
  String unit;

  BookingFee({
    required this.name,
    required this.desc,
    required this.nameAr,
    required this.descAr,
    required this.nameEs,
    required this.descEs,
    required this.namePt,
    required this.descPt,
    required this.price,
    required this.unit,
  });

  factory BookingFee.fromJson(Map<String, dynamic> json) => BookingFee(
    name: json["name"],
    desc: json["desc"],
    nameAr: json["name_ar"],
    descAr: json["desc_ar"],
    nameEs: json["name_es"],
    descEs: json["desc_es"],
    namePt: json["name_pt"],
    descPt: json["desc_pt"],
    price: json["price"],
    unit: json["unit"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "desc": desc,
    "name_ar": nameAr,
    "desc_ar": descAr,
    "name_es": nameEs,
    "desc_es": descEs,
    "name_pt": namePt,
    "desc_pt": descPt,
    "price": price,
    "unit": unit,
  };
}

class Category {
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
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

class PersonType {
  String name;
  String desc;
  String min;
  String max;
  String price;

  PersonType({
    required this.name,
    required this.desc,
    required this.min,
    required this.max,
    required this.price,
  });

  factory PersonType.fromJson(Map<String, dynamic> json) => PersonType(
    name: json["name"],
    desc: json["desc"],
    min: json["min"],
    max: json["max"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "desc": desc,
    "min": min,
    "max": max,
    "price": price,
  };
}

class Related {
  int id;
  String title;
  String price;
  dynamic salePrice;
  dynamic discountPercent;
  String image;
  String content;
  Category location;
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
    location: Category.fromJson(json["location"]),
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

class DataReviewScore {
  int scoreTotal;
  String scoreText;
  int totalReview;
  Map<String, RateScore> rateScore;

  DataReviewScore({
    required this.scoreTotal,
    required this.scoreText,
    required this.totalReview,
    required this.rateScore,
  });

  factory DataReviewScore.fromJson(Map<String, dynamic> json) => DataReviewScore(
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

class Terms {
  The4 the4;

  Terms({
    required this.the4,
  });

  factory Terms.fromJson(Map<String, dynamic> json) => Terms(
    the4: The4.fromJson(json["4"]),
  );

  Map<String, dynamic> toJson() => {
    "4": the4.toJson(),
  };
}

class The4 {
  Parent parent;
  List<Child> child;

  The4({
    required this.parent,
    required this.child,
  });

  factory The4.fromJson(Map<String, dynamic> json) => The4(
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
  dynamic icon;
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
