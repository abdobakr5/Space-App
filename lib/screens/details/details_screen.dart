import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import '../../core/constants/app_strings.dart';
import '../../models/planet_model.dart';
import '../../widgets/app_bar/details_header.dart';
import '../../widgets/stats/planet_info_item.dart';

class DetailsScreen extends StatelessWidget {
  final PlanetModel planet;

  const DetailsScreen({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
             DetailsHeader(
              planetName: planet.name,
              planetTitle: planet.title,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 350,
                      child: Flutter3DViewer(
                        src: planet.model,
                      ),
                    ),
                  ),

                  const Text(
                    AppStrings.about,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    planet.about,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                   PlanetInfoItem(
                    title: 'Distance from Sun (km)',
                    value: '${planet.distance.toInt()}',
                  ),

                  PlanetInfoItem(
                    title: 'Length of Day (hours)',
                    value: '${planet.dayLength}',
                  ),

                  PlanetInfoItem(
                    title: 'Orbital Period (Earth years)',
                    value: '${planet.orbitalPeriod}',
                  ),

                  PlanetInfoItem(
                    title: 'Radius (km)',
                    value: '${planet.radius.toInt()}',
                  ),

                  PlanetInfoItem(
                    title: 'Mass (kg)',
                    value: planet.mass,
                  ),

                  PlanetInfoItem(
                    title: 'Gravity (m/s²)',
                    value: '${planet.gravity}',
                  ),

                  PlanetInfoItem(
                    title: 'Surface Area (km²)',
                    value: planet.surfaceArea,
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
