
import 'dart:convert';

import 'package:flutter/material.dart';

class ProductModel {
  final String details;
  final String name;
  final String pdf;
  final String pic;
  
  ProductModel({
    @required this.details,
    @required this.name,
    @required this.pdf,
    @required this.pic,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'details': details,
      'name': name,
      'pdf': pdf,
      'pic': pic,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      details: map['details'] ?? '',
      name: map['name'] ?? '',
      pdf: map['pdf'] ?? '',
      pic: map['pic'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));
}
