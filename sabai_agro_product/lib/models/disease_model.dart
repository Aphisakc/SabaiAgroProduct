
import 'dart:convert';

import 'package:flutter/material.dart';

class DiseaseModel {
 
  final String name;
  final String pdf;
  
  
  DiseaseModel({
    
    @required this.name,
    @required this.pdf,
    
  });
  

  Map<String, dynamic> toMap() {
    return {
      
      'name': name,
      'pdf': pdf,
      
    };
  }

  factory DiseaseModel.fromMap(Map<String, dynamic> map) {
    return DiseaseModel(
     
      name: map['name'] ?? '',
      pdf: map['pdf'] ?? '',
      
    );
  }

  String toJson() => json.encode(toMap());

  factory DiseaseModel.fromJson(String source) => DiseaseModel.fromMap(json.decode(source));
}

