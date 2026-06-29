import 'package:flutter/material.dart';
import '../../core/constants/app_strings.dart';
import '../../models/planet_model.dart';
import '../../services/planet_service.dart';
import '../../widgets/buttons/custom_button.dart';
import '../../widgets/cards/planet_card.dart';
import '../../widgets/buttons/circular_arrow_button.dart';
import '../../widgets/app_bar/explore_header.dart';
import '../details/details_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<PlanetModel> planets = [];
  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    loadPlanets();
  }

  Future<void> loadPlanets() async {
    planets = await PlanetService.getPlanets();
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (planets.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final planet = planets[currentIndex];

    return Scaffold(
      body: Column(
        children: [
          // Stacked Layers Component for Explore
          const ExploreHeader(),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  // PageView Component which scrolls on Swipe
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: planets.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Center(
                          child: PlanetCard(
                            image: planets[index].image,
                          ),
                        );
                      },
                    ),
                  ),

                  // Buttons responsible for navigation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularArrowButton(
                        icon: Icons.arrow_back,
                        onPressed: () {
                          if (currentIndex > 0) {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                      
                      Text(
                        planet.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      CircularArrowButton(
                        icon: Icons.arrow_forward,
                        onPressed: () {
                          if (currentIndex < planets.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Elevated Button with Title + Planet Name
                  CustomButton(
                    text: 'Explore ${planet.name}',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                            planet: planet,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
