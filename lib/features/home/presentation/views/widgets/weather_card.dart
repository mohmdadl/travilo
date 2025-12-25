import 'package:flutter/material.dart';
import 'package:travilo/core/utils/app_color.dart';
import 'package:travilo/core/utils/styles.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final String date;
  final int minTemp;
  final int maxTemp;
  final IconData weatherIcon;
  final List<Color> backgroundGradient;

  const WeatherCard({
    super.key,
    required this.location,
    required this.date,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherIcon,
    required this.backgroundGradient,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.45,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: backgroundGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location
          Row(
            children: [
              const Icon(Icons.location_on, color: AppColors.white, size: 16),
              const SizedBox(width: 4),
              Text(
                location,
                style: AppStyles.textStyleMedium16.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Date
          Text(
            date,
            style: AppStyles.textStyleExtraLight14.copyWith(
              color: AppColors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 16),
          // Temperature
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$minTemp°',
                    style: AppStyles.textStyleBold24.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$maxTemp°',
                    style: AppStyles.textStyleMedium18.copyWith(
                      color: AppColors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              Icon(weatherIcon, color: AppColors.white, size: 48),
            ],
          ),
        ],
      ),
    );
  }
}
