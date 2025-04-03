// To parse this JSON data, do
//
//     final employeeListResModel = employeeListResModelFromJson(jsonString);

import 'dart:convert';

ProductListResModel productsListResModelFromJson(String str) =>
    ProductListResModel.fromJson(json.decode(str));

String employeeListResModelToJson(ProductListResModel data) =>
    json.encode(data.toJson());

class ProductListResModel {
  String? msg;
  List<EmployeeModel>? employeeList;

  ProductListResModel({
    this.msg,
    this.employeeList,
  });

  factory ProductListResModel.fromJson(Map<String, dynamic> json) =>
      ProductListResModel(
        msg: json["Msg"],
        employeeList: json["data"] == null
            ? []
            : List<EmployeeModel>.from(
                json["data"]!.map((x) => EmployeeModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Msg": msg,
        "data": employeeList == null
            ? []
            : List<dynamic>.from(employeeList!.map((x) => x.toJson())),
      };
}

class EmployeeModel {
  num? id;
  String? name;
  String? description;
  num? price;
  num? stock;
  String? category;
  dynamic imageUrl;
  dynamic user;

  EmployeeModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.category,
    this.imageUrl,
    this.user,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        category: json["category"],
        imageUrl: json["image_url"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "category": category,
        "image_url": imageUrl,
        "user": user,
      };
}
