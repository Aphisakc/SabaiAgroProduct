import 'dart:convert';

import 'package:flutter/material.dart';

class DiseaseModel {
  final String name;
  final String pdf;
  final String pic;
  final String group;
  final String strains;
  

  DiseaseModel({
    @required this.name,
    @required this.pdf,
    @required this.pic,
    @required this.group,
    @required this.strains,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'pdf': pdf,
      'pic': pic,
      'group': group,
      'strains': strains,
    };
  }

  factory DiseaseModel.fromMap(Map<String, dynamic> map) {
    return DiseaseModel(
      name: map['name'] ?? '',
      pdf: map['pdf'] ?? '',
      pic: map['pic'] ?? '',
      group: map['group'] ?? '',
      strains: map['strains'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DiseaseModel.fromJson(String source) =>
      DiseaseModel.fromMap(json.decode(source));
}
