class ItemModel {
  int id;
  int digitalId;
  String title;
  int issueNumber;
  String? description;
  String modified;
  String isbn;
  String upc;
  String diamondCode;
  String ean;
  String issn;

  ItemModel({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    this.description,
    required this.modified,
    required this.isbn,
    required this.upc,
    required this.diamondCode,
    required this.ean,
    required this.issn,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        id: json["id"] ?? 0,
        digitalId: json["digitalId"] ?? 0,
        title: json["title"] ?? '',
        issueNumber: json["issueNumber"] ?? 0,
        description: json["description"] ?? '',
        modified: json["modified"] ?? '',
        isbn: json["isbn"] ?? '',
        upc: json["upc"] ?? '',
        diamondCode: json["diamondCode"] ?? '',
        ean: json["ean"] ?? '',
        issn: json["issn"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "digitalId": digitalId,
        "title": title,
        "issueNumber": issueNumber,
        "description": description,
        "modified": modified,
        "isbn": isbn,
        "upc": upc,
        "diamondCode": diamondCode,
        "ean": ean,
        "issn": issn,
      };
}
