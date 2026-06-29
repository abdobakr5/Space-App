import 'package:flutter/services.dart';
import '../core/constants/app_assets.dart';
import '../models/planet_model.dart';
import 'dart:convert';

class PlanetService {
  static Future<List<PlanetModel>> getPlanets() async {
    final String jsonString =
    await rootBundle.loadString(
      AppAssets.planetsJson,
    );

    final List<dynamic> jsonData =
    jsonDecode(jsonString);

    return jsonData.map((planet) => PlanetModel.fromJson(planet),).toList();
  }
}